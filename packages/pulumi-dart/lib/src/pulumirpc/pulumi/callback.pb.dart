// This is a generated file - do not edit.
//
// Generated from pulumi/callback.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Callback extends $pb.GeneratedMessage {
  factory Callback({
    $core.String? target,
    $core.String? token,
  }) {
    final result = create();
    if (target != null) result.target = target;
    if (token != null) result.token = token;
    return result;
  }

  Callback._();

  factory Callback.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Callback.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Callback',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'target')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Callback clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Callback copyWith(void Function(Callback) updates) =>
      super.copyWith((message) => updates(message as Callback)) as Callback;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Callback create() => Callback._();
  @$core.override
  Callback createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Callback getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Callback>(create);
  static Callback? _defaultInstance;

  /// the gRPC target of the callback service.
  @$pb.TagNumber(1)
  $core.String get target => $_getSZ(0);
  @$pb.TagNumber(1)
  set target($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => $_clearField(1);

  /// the service specific unique token for this callback.
  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => $_clearField(2);
}

class CallbackInvokeRequest extends $pb.GeneratedMessage {
  factory CallbackInvokeRequest({
    $core.String? token,
    $core.List<$core.int>? request,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (request != null) result.request = request;
    return result;
  }

  CallbackInvokeRequest._();

  factory CallbackInvokeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CallbackInvokeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallbackInvokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'request', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallbackInvokeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallbackInvokeRequest copyWith(
          void Function(CallbackInvokeRequest) updates) =>
      super.copyWith((message) => updates(message as CallbackInvokeRequest))
          as CallbackInvokeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallbackInvokeRequest create() => CallbackInvokeRequest._();
  @$core.override
  CallbackInvokeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CallbackInvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallbackInvokeRequest>(create);
  static CallbackInvokeRequest? _defaultInstance;

  /// the token for the callback.
  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  /// the serialized protobuf message of the arguments for this callback.
  @$pb.TagNumber(2)
  $core.List<$core.int> get request => $_getN(1);
  @$pb.TagNumber(2)
  set request($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => $_clearField(2);
}

class CallbackInvokeResponse extends $pb.GeneratedMessage {
  factory CallbackInvokeResponse({
    $core.List<$core.int>? response,
  }) {
    final result = create();
    if (response != null) result.response = response;
    return result;
  }

  CallbackInvokeResponse._();

  factory CallbackInvokeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CallbackInvokeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallbackInvokeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'response', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallbackInvokeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallbackInvokeResponse copyWith(
          void Function(CallbackInvokeResponse) updates) =>
      super.copyWith((message) => updates(message as CallbackInvokeResponse))
          as CallbackInvokeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallbackInvokeResponse create() => CallbackInvokeResponse._();
  @$core.override
  CallbackInvokeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CallbackInvokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallbackInvokeResponse>(create);
  static CallbackInvokeResponse? _defaultInstance;

  /// the serialized protobuf message of the response for this callback.
  @$pb.TagNumber(1)
  $core.List<$core.int> get response => $_getN(0);
  @$pb.TagNumber(1)
  set response($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
