import 'package:pulumi/pulumi.dart';
import 'debug_session_args.dart';

/// Creates a debug session for a deployed API Proxy revision.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class DebugSession extends CustomResource {
  late final Output<String> apiId;

  /// Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
  late final Output<int> count;

  /// The first transaction creation timestamp, recorded by UAP.
  late final Output<String> createTime;
  late final Output<String> environmentId;

  /// Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.
  late final Output<String> filter;

  /// A unique ID for this DebugSession.
  late final Output<String> name;
  late final Output<String> organizationId;
  late final Output<String> revisionId;

  /// Optional. The time in seconds after which this DebugSession should end. A timeout specified in DebugSession will overwrite this value.
  late final Output<String> timeout;

  /// Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.
  late final Output<int> tracesize;

  /// Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.
  late final Output<int> validity;

  DebugSession(
    String name, {
    DebugSessionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:DebugSession',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = Output.createUnknown<String>();
    this.count = Output.createUnknown<int>();
    this.createTime = Output.createUnknown<String>();
    this.environmentId = Output.createUnknown<String>();
    this.filter = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.revisionId = Output.createUnknown<String>();
    this.timeout = Output.createUnknown<String>();
    this.tracesize = Output.createUnknown<int>();
    this.validity = Output.createUnknown<int>();
  }
}
