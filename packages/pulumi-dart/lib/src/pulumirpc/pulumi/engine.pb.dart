// This is a generated file - do not edit.
//
// Generated from pulumi/engine.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $2;

import 'engine.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'engine.pbenum.dart';

class LogRequest extends $pb.GeneratedMessage {
  factory LogRequest({
    LogSeverity? severity,
    $core.String? message,
    $core.String? urn,
    $core.int? streamId,
    $core.bool? ephemeral,
  }) {
    final result = create();
    if (severity != null) result.severity = severity;
    if (message != null) result.message = message;
    if (urn != null) result.urn = urn;
    if (streamId != null) result.streamId = streamId;
    if (ephemeral != null) result.ephemeral = ephemeral;
    return result;
  }

  LogRequest._();

  factory LogRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LogRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LogRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aE<LogSeverity>(1, _omitFieldNames ? '' : 'severity',
        enumValues: LogSeverity.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'urn')
    ..aI(4, _omitFieldNames ? '' : 'streamId', protoName: 'streamId')
    ..aOB(5, _omitFieldNames ? '' : 'ephemeral')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogRequest copyWith(void Function(LogRequest) updates) =>
      super.copyWith((message) => updates(message as LogRequest)) as LogRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogRequest create() => LogRequest._();
  @$core.override
  LogRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LogRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogRequest>(create);
  static LogRequest? _defaultInstance;

  /// the logging level of this message.
  @$pb.TagNumber(1)
  LogSeverity get severity => $_getN(0);
  @$pb.TagNumber(1)
  set severity(LogSeverity value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSeverity() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeverity() => $_clearField(1);

  /// the contents of the logged message.
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  /// the (optional) resource urn this log is associated with.
  @$pb.TagNumber(3)
  $core.String get urn => $_getSZ(2);
  @$pb.TagNumber(3)
  set urn($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrn() => $_clearField(3);

  /// the (optional) stream id that a stream of log messages can be associated with. This allows
  /// clients to not have to buffer a large set of log messages that they all want to be
  /// conceptually connected.  Instead the messages can be sent as chunks (with the same stream id)
  /// and the end display can show the messages as they arrive, while still stitching them together
  /// into one total log message.
  ///
  /// 0/not-given means: do not associate with any stream.
  @$pb.TagNumber(4)
  $core.int get streamId => $_getIZ(3);
  @$pb.TagNumber(4)
  set streamId($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStreamId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStreamId() => $_clearField(4);

  /// Optional value indicating whether this is a status message.
  @$pb.TagNumber(5)
  $core.bool get ephemeral => $_getBF(4);
  @$pb.TagNumber(5)
  set ephemeral($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEphemeral() => $_has(4);
  @$pb.TagNumber(5)
  void clearEphemeral() => $_clearField(5);
}

class GetRootResourceRequest extends $pb.GeneratedMessage {
  factory GetRootResourceRequest() => create();

  GetRootResourceRequest._();

  factory GetRootResourceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetRootResourceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRootResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRootResourceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRootResourceRequest copyWith(
          void Function(GetRootResourceRequest) updates) =>
      super.copyWith((message) => updates(message as GetRootResourceRequest))
          as GetRootResourceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRootResourceRequest create() => GetRootResourceRequest._();
  @$core.override
  GetRootResourceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetRootResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRootResourceRequest>(create);
  static GetRootResourceRequest? _defaultInstance;
}

class GetRootResourceResponse extends $pb.GeneratedMessage {
  factory GetRootResourceResponse({
    $core.String? urn,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    return result;
  }

  GetRootResourceResponse._();

  factory GetRootResourceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetRootResourceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRootResourceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRootResourceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRootResourceResponse copyWith(
          void Function(GetRootResourceResponse) updates) =>
      super.copyWith((message) => updates(message as GetRootResourceResponse))
          as GetRootResourceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRootResourceResponse create() => GetRootResourceResponse._();
  @$core.override
  GetRootResourceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetRootResourceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRootResourceResponse>(create);
  static GetRootResourceResponse? _defaultInstance;

  /// the URN of the root resource, or the empty string if one was not set.
  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);
}

class SetRootResourceRequest extends $pb.GeneratedMessage {
  factory SetRootResourceRequest({
    $core.String? urn,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    return result;
  }

  SetRootResourceRequest._();

  factory SetRootResourceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetRootResourceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetRootResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRootResourceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRootResourceRequest copyWith(
          void Function(SetRootResourceRequest) updates) =>
      super.copyWith((message) => updates(message as SetRootResourceRequest))
          as SetRootResourceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRootResourceRequest create() => SetRootResourceRequest._();
  @$core.override
  SetRootResourceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetRootResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetRootResourceRequest>(create);
  static SetRootResourceRequest? _defaultInstance;

  /// the URN of the root resource, or the empty string.
  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);
}

class SetRootResourceResponse extends $pb.GeneratedMessage {
  factory SetRootResourceResponse() => create();

  SetRootResourceResponse._();

  factory SetRootResourceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetRootResourceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetRootResourceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRootResourceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRootResourceResponse copyWith(
          void Function(SetRootResourceResponse) updates) =>
      super.copyWith((message) => updates(message as SetRootResourceResponse))
          as SetRootResourceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRootResourceResponse create() => SetRootResourceResponse._();
  @$core.override
  SetRootResourceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetRootResourceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetRootResourceResponse>(create);
  static SetRootResourceResponse? _defaultInstance;
}

class StartDebuggingRequest extends $pb.GeneratedMessage {
  factory StartDebuggingRequest({
    $2.Struct? config,
    $core.String? message,
  }) {
    final result = create();
    if (config != null) result.config = config;
    if (message != null) result.message = message;
    return result;
  }

  StartDebuggingRequest._();

  factory StartDebuggingRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StartDebuggingRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StartDebuggingRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$2.Struct>(1, _omitFieldNames ? '' : 'config',
        subBuilder: $2.Struct.create)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartDebuggingRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartDebuggingRequest copyWith(
          void Function(StartDebuggingRequest) updates) =>
      super.copyWith((message) => updates(message as StartDebuggingRequest))
          as StartDebuggingRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartDebuggingRequest create() => StartDebuggingRequest._();
  @$core.override
  StartDebuggingRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StartDebuggingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartDebuggingRequest>(create);
  static StartDebuggingRequest? _defaultInstance;

  /// the debug configuration parameters.  These are meant to be in the right format for the DAP protocol to consume.
  @$pb.TagNumber(1)
  $2.Struct get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($2.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Struct ensureConfig() => $_ensure(0);

  /// the string to display to the user with instructions on how to connect to the debugger.
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class RequirePulumiVersionRequest extends $pb.GeneratedMessage {
  factory RequirePulumiVersionRequest({
    $core.String? pulumiVersionRange,
  }) {
    final result = create();
    if (pulumiVersionRange != null)
      result.pulumiVersionRange = pulumiVersionRange;
    return result;
  }

  RequirePulumiVersionRequest._();

  factory RequirePulumiVersionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequirePulumiVersionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequirePulumiVersionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pulumiVersionRange')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequirePulumiVersionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequirePulumiVersionRequest copyWith(
          void Function(RequirePulumiVersionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RequirePulumiVersionRequest))
          as RequirePulumiVersionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequirePulumiVersionRequest create() =>
      RequirePulumiVersionRequest._();
  @$core.override
  RequirePulumiVersionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequirePulumiVersionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequirePulumiVersionRequest>(create);
  static RequirePulumiVersionRequest? _defaultInstance;

  /// A version range to check against the engine (CLI) version. If the version is not compatible with the specified
  /// range, an error is returned. The supported syntax for ranges is that of
  /// https://pkg.go.dev/github.com/blang/semver#ParseRange. For example ">=3.0.0", or "!3.1.2". Ranges can be AND-ed
  /// together by concatenating with spaces ">=3.5.0 !3.7.7", meaning greater-or-equal to 3.5.0 and not exactly 3.7.7.
  /// Ranges can be OR-ed with the `||` operator: "<3.4.0 || >3.8.0", meaning less-than 3.4.0 or greater-than 3.8.0.
  @$pb.TagNumber(1)
  $core.String get pulumiVersionRange => $_getSZ(0);
  @$pb.TagNumber(1)
  set pulumiVersionRange($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPulumiVersionRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearPulumiVersionRange() => $_clearField(1);
}

class RequirePulumiVersionResponse extends $pb.GeneratedMessage {
  factory RequirePulumiVersionResponse() => create();

  RequirePulumiVersionResponse._();

  factory RequirePulumiVersionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequirePulumiVersionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequirePulumiVersionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequirePulumiVersionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequirePulumiVersionResponse copyWith(
          void Function(RequirePulumiVersionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as RequirePulumiVersionResponse))
          as RequirePulumiVersionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequirePulumiVersionResponse create() =>
      RequirePulumiVersionResponse._();
  @$core.override
  RequirePulumiVersionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequirePulumiVersionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequirePulumiVersionResponse>(create);
  static RequirePulumiVersionResponse? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
