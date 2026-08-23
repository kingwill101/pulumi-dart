import 'package:grpc/grpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/engine.pbgrpc.dart' as pb;

import 'engine_logger.dart';

/// {@template pulumi.engine.summary}
/// Thin wrapper around the Pulumi engine gRPC client.
///
/// The engine is responsible for diagnostics, root stack operations, and other
/// orchestration RPCs. Most callers interact through [EngineLogger] or higher
/// level runtime APIs.
/// {@endtemplate}
///
class Engine {
  final pb.EngineClient _client;

  Engine(ClientChannel channel) : _client = pb.EngineClient(channel);

  /// Wraps an existing engine client.
  Engine.fromClient(pb.EngineClient client) : _client = client;

  /// Sends a log request to the engine.
  ///
  /// Errors are swallowed and printed to avoid failing the user program when
  /// diagnostics transport fails.
  Future<void> log(LogRequest request) async {
    try {
      await _client.log(request.toGrpc());
    } catch (e) {
      print('Error logging: $e');
      // You might want to handle this error more gracefully
    }
  }

  /// Requires the connected Pulumi CLI to satisfy [versionRange].
  Future<void> requirePulumiVersion(String versionRange) async {
    await _client.requirePulumiVersion(
      pb.RequirePulumiVersionRequest(pulumiVersionRange: versionRange),
    );
  }
}
