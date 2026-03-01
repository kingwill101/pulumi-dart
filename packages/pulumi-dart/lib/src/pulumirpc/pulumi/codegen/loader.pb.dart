// This is a generated file - do not edit.
//
// Generated from pulumi/codegen/loader.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Parameterization specifies the name, version, and value for a parameterized package.
class Parameterization extends $pb.GeneratedMessage {
  factory Parameterization({
    $core.String? name,
    $core.String? version,
    $core.List<$core.int>? value,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    if (value != null) result.value = value;
    return result;
  }

  Parameterization._();

  factory Parameterization.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Parameterization.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Parameterization',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'codegen'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Parameterization clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Parameterization copyWith(void Function(Parameterization) updates) =>
      super.copyWith((message) => updates(message as Parameterization))
          as Parameterization;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Parameterization create() => Parameterization._();
  @$core.override
  Parameterization createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Parameterization getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Parameterization>(create);
  static Parameterization? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);
}

/// GetSchemaRequest allows the engine to return a schema for a given package and version.
class GetSchemaRequest extends $pb.GeneratedMessage {
  factory GetSchemaRequest({
    $core.String? package,
    $core.String? version,
    $core.String? downloadUrl,
    Parameterization? parameterization,
  }) {
    final result = create();
    if (package != null) result.package = package;
    if (version != null) result.version = version;
    if (downloadUrl != null) result.downloadUrl = downloadUrl;
    if (parameterization != null) result.parameterization = parameterization;
    return result;
  }

  GetSchemaRequest._();

  factory GetSchemaRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetSchemaRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSchemaRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'codegen'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'package')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'downloadUrl')
    ..aOM<Parameterization>(4, _omitFieldNames ? '' : 'parameterization',
        subBuilder: Parameterization.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSchemaRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSchemaRequest copyWith(void Function(GetSchemaRequest) updates) =>
      super.copyWith((message) => updates(message as GetSchemaRequest))
          as GetSchemaRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSchemaRequest create() => GetSchemaRequest._();
  @$core.override
  GetSchemaRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetSchemaRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSchemaRequest>(create);
  static GetSchemaRequest? _defaultInstance;

  /// the package name for the schema being requested.
  @$pb.TagNumber(1)
  $core.String get package => $_getSZ(0);
  @$pb.TagNumber(1)
  set package($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPackage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackage() => $_clearField(1);

  /// the version for the schema being requested, must be a valid semver or empty.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  /// the optional download url for the schema being requested.
  @$pb.TagNumber(3)
  $core.String get downloadUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set downloadUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDownloadUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearDownloadUrl() => $_clearField(3);

  /// the parameterization for the schema being requested, can be empty.
  @$pb.TagNumber(4)
  Parameterization get parameterization => $_getN(3);
  @$pb.TagNumber(4)
  set parameterization(Parameterization value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasParameterization() => $_has(3);
  @$pb.TagNumber(4)
  void clearParameterization() => $_clearField(4);
  @$pb.TagNumber(4)
  Parameterization ensureParameterization() => $_ensure(3);
}

/// GetSchemaResponse returns the schema data for the requested package.
class GetSchemaResponse extends $pb.GeneratedMessage {
  factory GetSchemaResponse({
    $core.List<$core.int>? schema,
  }) {
    final result = create();
    if (schema != null) result.schema = schema;
    return result;
  }

  GetSchemaResponse._();

  factory GetSchemaResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetSchemaResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSchemaResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'codegen'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'schema', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSchemaResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSchemaResponse copyWith(void Function(GetSchemaResponse) updates) =>
      super.copyWith((message) => updates(message as GetSchemaResponse))
          as GetSchemaResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSchemaResponse create() => GetSchemaResponse._();
  @$core.override
  GetSchemaResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetSchemaResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSchemaResponse>(create);
  static GetSchemaResponse? _defaultInstance;

  /// the JSON encoded schema.
  @$pb.TagNumber(1)
  $core.List<$core.int> get schema => $_getN(0);
  @$pb.TagNumber(1)
  set schema($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
