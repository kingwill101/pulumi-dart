// This is a generated file - do not edit.
//
// Generated from pulumi/plugin.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'plugin.pb.dart' as $0;

export 'plugin.pb.dart';

/// `PackageResolver` resolves a [](pulumirpc.PackageSpec) -- a user-supplied package reference such as a name,
/// registry coordinate, git URL, or local path, optionally carrying a version and parameters -- into a concrete,
/// downloadable [](pulumirpc.PackageDependency). The engine exposes this service to resource providers as part of the
/// provider handshake so they can resolve packages the same way the CLI does.
///
/// This is currently unstable and experimental.
@$pb.GrpcServiceName('pulumirpc.PackageResolver')
class PackageResolverClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  PackageResolverClient(super.channel, {super.options, super.interceptors});

  /// `ResolvePackage` resolves the given package specification to a concrete package dependency.
  $grpc.ResponseFuture<$0.PackageDependency> resolvePackage(
    $0.PackageSpec request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$resolvePackage, request, options: options);
  }

  // method descriptors

  static final _$resolvePackage =
      $grpc.ClientMethod<$0.PackageSpec, $0.PackageDependency>(
          '/pulumirpc.PackageResolver/ResolvePackage',
          ($0.PackageSpec value) => value.writeToBuffer(),
          $0.PackageDependency.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.PackageResolver')
abstract class PackageResolverServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.PackageResolver';

  PackageResolverServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PackageSpec, $0.PackageDependency>(
        'ResolvePackage',
        resolvePackage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PackageSpec.fromBuffer(value),
        ($0.PackageDependency value) => value.writeToBuffer()));
  }

  $async.Future<$0.PackageDependency> resolvePackage_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.PackageSpec> $request) async {
    return resolvePackage($call, await $request);
  }

  $async.Future<$0.PackageDependency> resolvePackage(
      $grpc.ServiceCall call, $0.PackageSpec request);
}
