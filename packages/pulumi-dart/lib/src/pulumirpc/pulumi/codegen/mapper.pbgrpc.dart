// This is a generated file - do not edit.
//
// Generated from pulumi/codegen/mapper.proto.

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

import 'mapper.pb.dart' as $0;

export 'mapper.pb.dart';

/// Mapper provides methods for retrieving mappings that describe how to map names in some source "provider" (e.g. a
/// Terraform provider, if we are converting from Terraform) to names in appropriate Pulumi packages. So when converting
/// a Terraform program containing code like `resource "aws_s3_bucket" "b" {}`, for instance, we need to know (among
/// other things) that the `aws_s3_bucket` Terraform resource type corresponds to the Pulumi type `aws:s3/bucket:Bucket`,
/// and thus lives in the `aws` package. This is the kind of information that a Mapper provides.
@$pb.GrpcServiceName('codegen.Mapper')
class MapperClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  MapperClient(super.channel, {super.options, super.interceptors});

  /// `GetMapping` returns any available mapping data for the given source provider name (so again, this is e.g. the
  /// name of a Terraform provider if converting from Terraform). Callers may pass "hints" that describe a Pulumi
  /// package that is expected to provide the mapping and satisfy the request, which implementations may use to
  /// optimise their efforts to return the best possible mapping. If no matching mapping exists, implementations should
  /// return an empty byte array result.
  $grpc.ResponseFuture<$0.GetMappingResponse> getMapping(
    $0.GetMappingRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMapping, request, options: options);
  }

  // method descriptors

  static final _$getMapping =
      $grpc.ClientMethod<$0.GetMappingRequest, $0.GetMappingResponse>(
          '/codegen.Mapper/GetMapping',
          ($0.GetMappingRequest value) => value.writeToBuffer(),
          $0.GetMappingResponse.fromBuffer);
}

@$pb.GrpcServiceName('codegen.Mapper')
abstract class MapperServiceBase extends $grpc.Service {
  $core.String get $name => 'codegen.Mapper';

  MapperServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetMappingRequest, $0.GetMappingResponse>(
        'GetMapping',
        getMapping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMappingRequest.fromBuffer(value),
        ($0.GetMappingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetMappingResponse> getMapping_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetMappingRequest> $request) async {
    return getMapping($call, await $request);
  }

  $async.Future<$0.GetMappingResponse> getMapping(
      $grpc.ServiceCall call, $0.GetMappingRequest request);
}
