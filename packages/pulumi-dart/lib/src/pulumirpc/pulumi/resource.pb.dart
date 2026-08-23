// This is a generated file - do not edit.
//
// Generated from pulumi/resource.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $4;

import 'alias.pb.dart' as $6;
import 'callback.pb.dart' as $3;
import 'provider.pb.dart' as $2;
import 'resource.pbenum.dart';
import 'source.pb.dart' as $5;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'resource.pbenum.dart';

/// DeploymentInfo returns monitor execution state currently sent to programs
/// and/or providers through other channels.
class DeploymentInfo extends $pb.GeneratedMessage {
  factory DeploymentInfo({
    $core.String? project,
    $core.String? stack,
    $core.String? organization,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? config,
    $core.Iterable<$core.String>? configSecretKeys,
    $core.bool? dryRun,
    $core.int? parallel,
    $core.Iterable<ResourceMonitorFeature>? supportedFeatures,
  }) {
    final result = create();
    if (project != null) result.project = project;
    if (stack != null) result.stack = stack;
    if (organization != null) result.organization = organization;
    if (config != null) result.config.addEntries(config);
    if (configSecretKeys != null)
      result.configSecretKeys.addAll(configSecretKeys);
    if (dryRun != null) result.dryRun = dryRun;
    if (parallel != null) result.parallel = parallel;
    if (supportedFeatures != null)
      result.supportedFeatures.addAll(supportedFeatures);
    return result;
  }

  DeploymentInfo._();

  factory DeploymentInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeploymentInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeploymentInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'stack')
    ..aOS(3, _omitFieldNames ? '' : 'organization')
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'config',
        entryClassName: 'DeploymentInfo.ConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPS(5, _omitFieldNames ? '' : 'configSecretKeys',
        protoName: 'configSecretKeys')
    ..aOB(6, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aI(7, _omitFieldNames ? '' : 'parallel')
    ..pc<ResourceMonitorFeature>(
        8, _omitFieldNames ? '' : 'supportedFeatures', $pb.PbFieldType.KE,
        protoName: 'supportedFeatures',
        valueOf: ResourceMonitorFeature.valueOf,
        enumValues: ResourceMonitorFeature.values,
        defaultEnumValue:
            ResourceMonitorFeature.RESOURCE_MONITOR_FEATURE_SECRETS)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeploymentInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeploymentInfo copyWith(void Function(DeploymentInfo) updates) =>
      super.copyWith((message) => updates(message as DeploymentInfo))
          as DeploymentInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentInfo create() => DeploymentInfo._();
  @$core.override
  DeploymentInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeploymentInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeploymentInfo>(create);
  static DeploymentInfo? _defaultInstance;

  /// The project name.
  @$pb.TagNumber(1)
  $core.String get project => $_getSZ(0);
  @$pb.TagNumber(1)
  set project($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProject() => $_has(0);
  @$pb.TagNumber(1)
  void clearProject() => $_clearField(1);

  /// The stack name.
  @$pb.TagNumber(2)
  $core.String get stack => $_getSZ(1);
  @$pb.TagNumber(2)
  set stack($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStack() => $_has(1);
  @$pb.TagNumber(2)
  void clearStack() => $_clearField(2);

  /// The organization name.
  @$pb.TagNumber(3)
  $core.String get organization => $_getSZ(2);
  @$pb.TagNumber(3)
  set organization($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOrganization() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganization() => $_clearField(3);

  /// The stack configuration values.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get config => $_getMap(3);

  /// Configuration keys whose values are secret.
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get configSecretKeys => $_getList(4);

  /// True if the current execution is preview/dry-run.
  @$pb.TagNumber(6)
  $core.bool get dryRun => $_getBF(5);
  @$pb.TagNumber(6)
  set dryRun($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDryRun() => $_has(5);
  @$pb.TagNumber(6)
  void clearDryRun() => $_clearField(6);

  /// Requested operation parallelism (<=1 for serial execution).
  @$pb.TagNumber(7)
  $core.int get parallel => $_getIZ(6);
  @$pb.TagNumber(7)
  set parallel($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasParallel() => $_has(6);
  @$pb.TagNumber(7)
  void clearParallel() => $_clearField(7);

  /// The set of monitor-supported protocol features.
  @$pb.TagNumber(8)
  $pb.PbList<ResourceMonitorFeature> get supportedFeatures => $_getList(7);
}

/// SupportsFeatureRequest allows a client to test if the resource monitor supports a certain feature, which it may use
/// to control the format or types of messages it sends.
class SupportsFeatureRequest extends $pb.GeneratedMessage {
  factory SupportsFeatureRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  SupportsFeatureRequest._();

  factory SupportsFeatureRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SupportsFeatureRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SupportsFeatureRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SupportsFeatureRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SupportsFeatureRequest copyWith(
          void Function(SupportsFeatureRequest) updates) =>
      super.copyWith((message) => updates(message as SupportsFeatureRequest))
          as SupportsFeatureRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupportsFeatureRequest create() => SupportsFeatureRequest._();
  @$core.override
  SupportsFeatureRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SupportsFeatureRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SupportsFeatureRequest>(create);
  static SupportsFeatureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class SupportsFeatureResponse extends $pb.GeneratedMessage {
  factory SupportsFeatureResponse({
    $core.bool? hasSupport,
  }) {
    final result = create();
    if (hasSupport != null) result.hasSupport = hasSupport;
    return result;
  }

  SupportsFeatureResponse._();

  factory SupportsFeatureResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SupportsFeatureResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SupportsFeatureResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'hasSupport', protoName: 'hasSupport')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SupportsFeatureResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SupportsFeatureResponse copyWith(
          void Function(SupportsFeatureResponse) updates) =>
      super.copyWith((message) => updates(message as SupportsFeatureResponse))
          as SupportsFeatureResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupportsFeatureResponse create() => SupportsFeatureResponse._();
  @$core.override
  SupportsFeatureResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SupportsFeatureResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SupportsFeatureResponse>(create);
  static SupportsFeatureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasSupport => $_getBF(0);
  @$pb.TagNumber(1)
  set hasSupport($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHasSupport() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasSupport() => $_clearField(1);
}

/// ReadResourceRequest contains enough information to uniquely qualify and read a resource's state.
class ReadResourceRequest extends $pb.GeneratedMessage {
  factory ReadResourceRequest({
    $core.String? id,
    $core.String? type,
    $core.String? name,
    $core.String? parent,
    $4.Struct? properties,
    $core.Iterable<$core.String>? dependencies,
    $core.String? provider,
    $core.String? version,
    $core.bool? acceptSecrets,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.bool? acceptResources,
    $core.String? pluginDownloadURL,
    $5.SourcePosition? sourcePosition,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        pluginChecksums,
    $core.String? packageRef,
    $5.StackTrace? stackTrace,
    $core.String? parentStackTraceHandle,
    $core.bool? acceptsByteString,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (parent != null) result.parent = parent;
    if (properties != null) result.properties = properties;
    if (dependencies != null) result.dependencies.addAll(dependencies);
    if (provider != null) result.provider = provider;
    if (version != null) result.version = version;
    if (acceptSecrets != null) result.acceptSecrets = acceptSecrets;
    if (additionalSecretOutputs != null)
      result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    if (acceptResources != null) result.acceptResources = acceptResources;
    if (pluginDownloadURL != null) result.pluginDownloadURL = pluginDownloadURL;
    if (sourcePosition != null) result.sourcePosition = sourcePosition;
    if (pluginChecksums != null)
      result.pluginChecksums.addEntries(pluginChecksums);
    if (packageRef != null) result.packageRef = packageRef;
    if (stackTrace != null) result.stackTrace = stackTrace;
    if (parentStackTraceHandle != null)
      result.parentStackTraceHandle = parentStackTraceHandle;
    if (acceptsByteString != null) result.acceptsByteString = acceptsByteString;
    return result;
  }

  ReadResourceRequest._();

  factory ReadResourceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadResourceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'parent')
    ..aOM<$4.Struct>(5, _omitFieldNames ? '' : 'properties',
        subBuilder: $4.Struct.create)
    ..pPS(6, _omitFieldNames ? '' : 'dependencies')
    ..aOS(7, _omitFieldNames ? '' : 'provider')
    ..aOS(8, _omitFieldNames ? '' : 'version')
    ..aOB(9, _omitFieldNames ? '' : 'acceptSecrets', protoName: 'acceptSecrets')
    ..pPS(10, _omitFieldNames ? '' : 'additionalSecretOutputs',
        protoName: 'additionalSecretOutputs')
    ..aOB(12, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..aOS(13, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOM<$5.SourcePosition>(14, _omitFieldNames ? '' : 'sourcePosition',
        protoName: 'sourcePosition', subBuilder: $5.SourcePosition.create)
    ..m<$core.String, $core.List<$core.int>>(
        15, _omitFieldNames ? '' : 'pluginChecksums',
        protoName: 'pluginChecksums',
        entryClassName: 'ReadResourceRequest.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(16, _omitFieldNames ? '' : 'packageRef', protoName: 'packageRef')
    ..aOM<$5.StackTrace>(17, _omitFieldNames ? '' : 'stackTrace',
        protoName: 'stackTrace', subBuilder: $5.StackTrace.create)
    ..aOS(18, _omitFieldNames ? '' : 'parentStackTraceHandle',
        protoName: 'parentStackTraceHandle')
    ..aOB(19, _omitFieldNames ? '' : 'acceptsByteString')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResourceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResourceRequest copyWith(void Function(ReadResourceRequest) updates) =>
      super.copyWith((message) => updates(message as ReadResourceRequest))
          as ReadResourceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadResourceRequest create() => ReadResourceRequest._();
  @$core.override
  ReadResourceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadResourceRequest>(create);
  static ReadResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get parent => $_getSZ(3);
  @$pb.TagNumber(4)
  set parent($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasParent() => $_has(3);
  @$pb.TagNumber(4)
  void clearParent() => $_clearField(4);

  @$pb.TagNumber(5)
  $4.Struct get properties => $_getN(4);
  @$pb.TagNumber(5)
  set properties($4.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasProperties() => $_has(4);
  @$pb.TagNumber(5)
  void clearProperties() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.Struct ensureProperties() => $_ensure(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get dependencies => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get provider => $_getSZ(6);
  @$pb.TagNumber(7)
  set provider($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasProvider() => $_has(6);
  @$pb.TagNumber(7)
  void clearProvider() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get version => $_getSZ(7);
  @$pb.TagNumber(8)
  set version($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasVersion() => $_has(7);
  @$pb.TagNumber(8)
  void clearVersion() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get acceptSecrets => $_getBF(8);
  @$pb.TagNumber(9)
  set acceptSecrets($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasAcceptSecrets() => $_has(8);
  @$pb.TagNumber(9)
  void clearAcceptSecrets() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get additionalSecretOutputs => $_getList(9);

  @$pb.TagNumber(12)
  $core.bool get acceptResources => $_getBF(10);
  @$pb.TagNumber(12)
  set acceptResources($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(12)
  $core.bool hasAcceptResources() => $_has(10);
  @$pb.TagNumber(12)
  void clearAcceptResources() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get pluginDownloadURL => $_getSZ(11);
  @$pb.TagNumber(13)
  set pluginDownloadURL($core.String value) => $_setString(11, value);
  @$pb.TagNumber(13)
  $core.bool hasPluginDownloadURL() => $_has(11);
  @$pb.TagNumber(13)
  void clearPluginDownloadURL() => $_clearField(13);

  @$pb.TagNumber(14)
  $5.SourcePosition get sourcePosition => $_getN(12);
  @$pb.TagNumber(14)
  set sourcePosition($5.SourcePosition value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasSourcePosition() => $_has(12);
  @$pb.TagNumber(14)
  void clearSourcePosition() => $_clearField(14);
  @$pb.TagNumber(14)
  $5.SourcePosition ensureSourcePosition() => $_ensure(12);

  @$pb.TagNumber(15)
  $pb.PbMap<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(13);

  @$pb.TagNumber(16)
  $core.String get packageRef => $_getSZ(14);
  @$pb.TagNumber(16)
  set packageRef($core.String value) => $_setString(14, value);
  @$pb.TagNumber(16)
  $core.bool hasPackageRef() => $_has(14);
  @$pb.TagNumber(16)
  void clearPackageRef() => $_clearField(16);

  @$pb.TagNumber(17)
  $5.StackTrace get stackTrace => $_getN(15);
  @$pb.TagNumber(17)
  set stackTrace($5.StackTrace value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasStackTrace() => $_has(15);
  @$pb.TagNumber(17)
  void clearStackTrace() => $_clearField(17);
  @$pb.TagNumber(17)
  $5.StackTrace ensureStackTrace() => $_ensure(15);

  @$pb.TagNumber(18)
  $core.String get parentStackTraceHandle => $_getSZ(16);
  @$pb.TagNumber(18)
  set parentStackTraceHandle($core.String value) => $_setString(16, value);
  @$pb.TagNumber(18)
  $core.bool hasParentStackTraceHandle() => $_has(16);
  @$pb.TagNumber(18)
  void clearParentStackTraceHandle() => $_clearField(18);

  /// When true operations may return strings containing bytes that are not valid UTF-8, marshaled as objects
  /// carrying the byte string signature and a base64 encoding of the string's bytes.
  @$pb.TagNumber(19)
  $core.bool get acceptsByteString => $_getBF(17);
  @$pb.TagNumber(19)
  set acceptsByteString($core.bool value) => $_setBool(17, value);
  @$pb.TagNumber(19)
  $core.bool hasAcceptsByteString() => $_has(17);
  @$pb.TagNumber(19)
  void clearAcceptsByteString() => $_clearField(19);
}

/// ReadResourceResponse contains the result of reading a resource's state.
class ReadResourceResponse extends $pb.GeneratedMessage {
  factory ReadResourceResponse({
    $core.String? urn,
    $4.Struct? properties,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    if (properties != null) result.properties = properties;
    return result;
  }

  ReadResourceResponse._();

  factory ReadResourceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadResourceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadResourceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$4.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $4.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResourceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResourceResponse copyWith(void Function(ReadResourceResponse) updates) =>
      super.copyWith((message) => updates(message as ReadResourceResponse))
          as ReadResourceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadResourceResponse create() => ReadResourceResponse._();
  @$core.override
  ReadResourceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadResourceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadResourceResponse>(create);
  static ReadResourceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  @$pb.TagNumber(2)
  $4.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($4.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.Struct ensureProperties() => $_ensure(1);
}

/// PropertyDependencies describes the resources that a particular property depends on.
class RegisterResourceRequest_PropertyDependencies
    extends $pb.GeneratedMessage {
  factory RegisterResourceRequest_PropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final result = create();
    if (urns != null) result.urns.addAll(urns);
    return result;
  }

  RegisterResourceRequest_PropertyDependencies._();

  factory RegisterResourceRequest_PropertyDependencies.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResourceRequest_PropertyDependencies.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceRequest.PropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceRequest_PropertyDependencies clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceRequest_PropertyDependencies copyWith(
          void Function(RegisterResourceRequest_PropertyDependencies)
              updates) =>
      super.copyWith((message) =>
              updates(message as RegisterResourceRequest_PropertyDependencies))
          as RegisterResourceRequest_PropertyDependencies;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_PropertyDependencies create() =>
      RegisterResourceRequest_PropertyDependencies._();
  @$core.override
  RegisterResourceRequest_PropertyDependencies createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_PropertyDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RegisterResourceRequest_PropertyDependencies>(create);
  static RegisterResourceRequest_PropertyDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get urns => $_getList(0);
}

/// CustomTimeouts allows a user to be able to create a set of custom timeout parameters.
class RegisterResourceRequest_CustomTimeouts extends $pb.GeneratedMessage {
  factory RegisterResourceRequest_CustomTimeouts({
    $core.String? create_1,
    $core.String? update,
    $core.String? delete,
    $core.String? read,
  }) {
    final result = create();
    if (create_1 != null) result.create_1 = create_1;
    if (update != null) result.update = update;
    if (delete != null) result.delete = delete;
    if (read != null) result.read = read;
    return result;
  }

  RegisterResourceRequest_CustomTimeouts._();

  factory RegisterResourceRequest_CustomTimeouts.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResourceRequest_CustomTimeouts.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceRequest.CustomTimeouts',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'create')
    ..aOS(2, _omitFieldNames ? '' : 'update')
    ..aOS(3, _omitFieldNames ? '' : 'delete')
    ..aOS(4, _omitFieldNames ? '' : 'read')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceRequest_CustomTimeouts clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceRequest_CustomTimeouts copyWith(
          void Function(RegisterResourceRequest_CustomTimeouts) updates) =>
      super.copyWith((message) =>
              updates(message as RegisterResourceRequest_CustomTimeouts))
          as RegisterResourceRequest_CustomTimeouts;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_CustomTimeouts create() =>
      RegisterResourceRequest_CustomTimeouts._();
  @$core.override
  RegisterResourceRequest_CustomTimeouts createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_CustomTimeouts getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RegisterResourceRequest_CustomTimeouts>(create);
  static RegisterResourceRequest_CustomTimeouts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get create_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set create_1($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCreate_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreate_1() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get update => $_getSZ(1);
  @$pb.TagNumber(2)
  set update($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdate() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get delete => $_getSZ(2);
  @$pb.TagNumber(3)
  set delete($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDelete() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelete() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get read => $_getSZ(3);
  @$pb.TagNumber(4)
  set read($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRead() => $_has(3);
  @$pb.TagNumber(4)
  void clearRead() => $_clearField(4);
}

class RegisterResourceRequest_ResourceHooksBinding
    extends $pb.GeneratedMessage {
  factory RegisterResourceRequest_ResourceHooksBinding({
    $core.Iterable<$core.String>? beforeCreate,
    $core.Iterable<$core.String>? afterCreate,
    $core.Iterable<$core.String>? beforeUpdate,
    $core.Iterable<$core.String>? afterUpdate,
    $core.Iterable<$core.String>? beforeDelete,
    $core.Iterable<$core.String>? afterDelete,
    $core.Iterable<$core.String>? onError,
  }) {
    final result = create();
    if (beforeCreate != null) result.beforeCreate.addAll(beforeCreate);
    if (afterCreate != null) result.afterCreate.addAll(afterCreate);
    if (beforeUpdate != null) result.beforeUpdate.addAll(beforeUpdate);
    if (afterUpdate != null) result.afterUpdate.addAll(afterUpdate);
    if (beforeDelete != null) result.beforeDelete.addAll(beforeDelete);
    if (afterDelete != null) result.afterDelete.addAll(afterDelete);
    if (onError != null) result.onError.addAll(onError);
    return result;
  }

  RegisterResourceRequest_ResourceHooksBinding._();

  factory RegisterResourceRequest_ResourceHooksBinding.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResourceRequest_ResourceHooksBinding.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceRequest.ResourceHooksBinding',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'beforeCreate')
    ..pPS(2, _omitFieldNames ? '' : 'afterCreate')
    ..pPS(3, _omitFieldNames ? '' : 'beforeUpdate')
    ..pPS(4, _omitFieldNames ? '' : 'afterUpdate')
    ..pPS(5, _omitFieldNames ? '' : 'beforeDelete')
    ..pPS(6, _omitFieldNames ? '' : 'afterDelete')
    ..pPS(7, _omitFieldNames ? '' : 'onError')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceRequest_ResourceHooksBinding clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceRequest_ResourceHooksBinding copyWith(
          void Function(RegisterResourceRequest_ResourceHooksBinding)
              updates) =>
      super.copyWith((message) =>
              updates(message as RegisterResourceRequest_ResourceHooksBinding))
          as RegisterResourceRequest_ResourceHooksBinding;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_ResourceHooksBinding create() =>
      RegisterResourceRequest_ResourceHooksBinding._();
  @$core.override
  RegisterResourceRequest_ResourceHooksBinding createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_ResourceHooksBinding getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RegisterResourceRequest_ResourceHooksBinding>(create);
  static RegisterResourceRequest_ResourceHooksBinding? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get beforeCreate => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get afterCreate => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get beforeUpdate => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get afterUpdate => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get beforeDelete => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get afterDelete => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get onError => $_getList(6);
}

/// RegisterResourceRequest contains information about a resource object that was newly allocated.
class RegisterResourceRequest extends $pb.GeneratedMessage {
  factory RegisterResourceRequest({
    $core.String? type,
    $core.String? name,
    $core.String? parent,
    $core.bool? custom,
    $4.Struct? object,
    $core.bool? protect,
    $core.Iterable<$core.String>? dependencies,
    $core.String? provider,
    $core.Iterable<
            $core.MapEntry<$core.String,
                RegisterResourceRequest_PropertyDependencies>>?
        propertyDependencies,
    $core.bool? deleteBeforeReplace,
    $core.String? version,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.bool? acceptSecrets,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.Iterable<$core.String>? aliasURNs,
    $core.String? importId,
    RegisterResourceRequest_CustomTimeouts? customTimeouts,
    $core.bool? deleteBeforeReplaceDefined,
    $core.bool? supportsPartialValues,
    $core.bool? remote,
    $core.bool? acceptResources,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? providers,
    $core.Iterable<$core.String>? replaceOnChanges,
    $core.String? pluginDownloadURL,
    $core.bool? retainOnDelete,
    $core.Iterable<$6.Alias>? aliases,
    $core.String? deletedWith,
    $core.bool? aliasSpecs,
    $5.SourcePosition? sourcePosition,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        pluginChecksums,
    $core.Iterable<$3.Callback>? transforms,
    $core.bool? supportsResultReporting,
    $core.String? packageRef,
    RegisterResourceRequest_ResourceHooksBinding? hooks,
    $5.StackTrace? stackTrace,
    $core.String? parentStackTraceHandle,
    $core.Iterable<$core.String>? hideDiffs,
    $core.Iterable<$core.String>? replaceWith,
    $4.Value? replacementTrigger,
    $core.String? snippetId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? envVarMappings,
    $core.bool? acceptsByteString,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (parent != null) result.parent = parent;
    if (custom != null) result.custom = custom;
    if (object != null) result.object = object;
    if (protect != null) result.protect = protect;
    if (dependencies != null) result.dependencies.addAll(dependencies);
    if (provider != null) result.provider = provider;
    if (propertyDependencies != null)
      result.propertyDependencies.addEntries(propertyDependencies);
    if (deleteBeforeReplace != null)
      result.deleteBeforeReplace = deleteBeforeReplace;
    if (version != null) result.version = version;
    if (ignoreChanges != null) result.ignoreChanges.addAll(ignoreChanges);
    if (acceptSecrets != null) result.acceptSecrets = acceptSecrets;
    if (additionalSecretOutputs != null)
      result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    if (aliasURNs != null) result.aliasURNs.addAll(aliasURNs);
    if (importId != null) result.importId = importId;
    if (customTimeouts != null) result.customTimeouts = customTimeouts;
    if (deleteBeforeReplaceDefined != null)
      result.deleteBeforeReplaceDefined = deleteBeforeReplaceDefined;
    if (supportsPartialValues != null)
      result.supportsPartialValues = supportsPartialValues;
    if (remote != null) result.remote = remote;
    if (acceptResources != null) result.acceptResources = acceptResources;
    if (providers != null) result.providers.addEntries(providers);
    if (replaceOnChanges != null)
      result.replaceOnChanges.addAll(replaceOnChanges);
    if (pluginDownloadURL != null) result.pluginDownloadURL = pluginDownloadURL;
    if (retainOnDelete != null) result.retainOnDelete = retainOnDelete;
    if (aliases != null) result.aliases.addAll(aliases);
    if (deletedWith != null) result.deletedWith = deletedWith;
    if (aliasSpecs != null) result.aliasSpecs = aliasSpecs;
    if (sourcePosition != null) result.sourcePosition = sourcePosition;
    if (pluginChecksums != null)
      result.pluginChecksums.addEntries(pluginChecksums);
    if (transforms != null) result.transforms.addAll(transforms);
    if (supportsResultReporting != null)
      result.supportsResultReporting = supportsResultReporting;
    if (packageRef != null) result.packageRef = packageRef;
    if (hooks != null) result.hooks = hooks;
    if (stackTrace != null) result.stackTrace = stackTrace;
    if (parentStackTraceHandle != null)
      result.parentStackTraceHandle = parentStackTraceHandle;
    if (hideDiffs != null) result.hideDiffs.addAll(hideDiffs);
    if (replaceWith != null) result.replaceWith.addAll(replaceWith);
    if (replacementTrigger != null)
      result.replacementTrigger = replacementTrigger;
    if (snippetId != null) result.snippetId = snippetId;
    if (envVarMappings != null)
      result.envVarMappings.addEntries(envVarMappings);
    if (acceptsByteString != null) result.acceptsByteString = acceptsByteString;
    return result;
  }

  RegisterResourceRequest._();

  factory RegisterResourceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResourceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'parent')
    ..aOB(4, _omitFieldNames ? '' : 'custom')
    ..aOM<$4.Struct>(5, _omitFieldNames ? '' : 'object',
        subBuilder: $4.Struct.create)
    ..aOB(6, _omitFieldNames ? '' : 'protect')
    ..pPS(7, _omitFieldNames ? '' : 'dependencies')
    ..aOS(8, _omitFieldNames ? '' : 'provider')
    ..m<$core.String, RegisterResourceRequest_PropertyDependencies>(
        9, _omitFieldNames ? '' : 'propertyDependencies',
        protoName: 'propertyDependencies',
        entryClassName: 'RegisterResourceRequest.PropertyDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: RegisterResourceRequest_PropertyDependencies.create,
        valueDefaultOrMaker:
            RegisterResourceRequest_PropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(10, _omitFieldNames ? '' : 'deleteBeforeReplace',
        protoName: 'deleteBeforeReplace')
    ..aOS(11, _omitFieldNames ? '' : 'version')
    ..pPS(12, _omitFieldNames ? '' : 'ignoreChanges',
        protoName: 'ignoreChanges')
    ..aOB(13, _omitFieldNames ? '' : 'acceptSecrets',
        protoName: 'acceptSecrets')
    ..pPS(14, _omitFieldNames ? '' : 'additionalSecretOutputs',
        protoName: 'additionalSecretOutputs')
    ..pPS(15, _omitFieldNames ? '' : 'aliasURNs', protoName: 'aliasURNs')
    ..aOS(16, _omitFieldNames ? '' : 'importId', protoName: 'importId')
    ..aOM<RegisterResourceRequest_CustomTimeouts>(
        17, _omitFieldNames ? '' : 'customTimeouts',
        protoName: 'customTimeouts',
        subBuilder: RegisterResourceRequest_CustomTimeouts.create)
    ..aOB(18, _omitFieldNames ? '' : 'deleteBeforeReplaceDefined',
        protoName: 'deleteBeforeReplaceDefined')
    ..aOB(19, _omitFieldNames ? '' : 'supportsPartialValues',
        protoName: 'supportsPartialValues')
    ..aOB(20, _omitFieldNames ? '' : 'remote')
    ..aOB(21, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..m<$core.String, $core.String>(22, _omitFieldNames ? '' : 'providers',
        entryClassName: 'RegisterResourceRequest.ProvidersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPS(23, _omitFieldNames ? '' : 'replaceOnChanges',
        protoName: 'replaceOnChanges')
    ..aOS(24, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOB(25, _omitFieldNames ? '' : 'retainOnDelete',
        protoName: 'retainOnDelete')
    ..pPM<$6.Alias>(26, _omitFieldNames ? '' : 'aliases',
        subBuilder: $6.Alias.create)
    ..aOS(27, _omitFieldNames ? '' : 'deletedWith', protoName: 'deletedWith')
    ..aOB(28, _omitFieldNames ? '' : 'aliasSpecs', protoName: 'aliasSpecs')
    ..aOM<$5.SourcePosition>(29, _omitFieldNames ? '' : 'sourcePosition',
        protoName: 'sourcePosition', subBuilder: $5.SourcePosition.create)
    ..m<$core.String, $core.List<$core.int>>(
        30, _omitFieldNames ? '' : 'pluginChecksums',
        protoName: 'pluginChecksums',
        entryClassName: 'RegisterResourceRequest.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPM<$3.Callback>(31, _omitFieldNames ? '' : 'transforms',
        subBuilder: $3.Callback.create)
    ..aOB(32, _omitFieldNames ? '' : 'supportsResultReporting',
        protoName: 'supportsResultReporting')
    ..aOS(33, _omitFieldNames ? '' : 'packageRef', protoName: 'packageRef')
    ..aOM<RegisterResourceRequest_ResourceHooksBinding>(
        34, _omitFieldNames ? '' : 'hooks',
        subBuilder: RegisterResourceRequest_ResourceHooksBinding.create)
    ..aOM<$5.StackTrace>(35, _omitFieldNames ? '' : 'stackTrace',
        protoName: 'stackTrace', subBuilder: $5.StackTrace.create)
    ..aOS(36, _omitFieldNames ? '' : 'parentStackTraceHandle',
        protoName: 'parentStackTraceHandle')
    ..pPS(37, _omitFieldNames ? '' : 'hideDiffs', protoName: 'hideDiffs')
    ..pPS(38, _omitFieldNames ? '' : 'replaceWith')
    ..aOM<$4.Value>(39, _omitFieldNames ? '' : 'replacementTrigger',
        subBuilder: $4.Value.create)
    ..aOS(40, _omitFieldNames ? '' : 'snippetId', protoName: 'snippetId')
    ..m<$core.String, $core.String>(41, _omitFieldNames ? '' : 'envVarMappings',
        protoName: 'envVarMappings',
        entryClassName: 'RegisterResourceRequest.EnvVarMappingsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(42, _omitFieldNames ? '' : 'acceptsByteString')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceRequest copyWith(
          void Function(RegisterResourceRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterResourceRequest))
          as RegisterResourceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest create() => RegisterResourceRequest._();
  @$core.override
  RegisterResourceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResourceRequest>(create);
  static RegisterResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get parent => $_getSZ(2);
  @$pb.TagNumber(3)
  set parent($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasParent() => $_has(2);
  @$pb.TagNumber(3)
  void clearParent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get custom => $_getBF(3);
  @$pb.TagNumber(4)
  set custom($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCustom() => $_has(3);
  @$pb.TagNumber(4)
  void clearCustom() => $_clearField(4);

  @$pb.TagNumber(5)
  $4.Struct get object => $_getN(4);
  @$pb.TagNumber(5)
  set object($4.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasObject() => $_has(4);
  @$pb.TagNumber(5)
  void clearObject() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.Struct ensureObject() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get protect => $_getBF(5);
  @$pb.TagNumber(6)
  set protect($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasProtect() => $_has(5);
  @$pb.TagNumber(6)
  void clearProtect() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get dependencies => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get provider => $_getSZ(7);
  @$pb.TagNumber(8)
  set provider($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasProvider() => $_has(7);
  @$pb.TagNumber(8)
  void clearProvider() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbMap<$core.String, RegisterResourceRequest_PropertyDependencies>
      get propertyDependencies => $_getMap(8);

  @$pb.TagNumber(10)
  $core.bool get deleteBeforeReplace => $_getBF(9);
  @$pb.TagNumber(10)
  set deleteBeforeReplace($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDeleteBeforeReplace() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeleteBeforeReplace() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get version => $_getSZ(10);
  @$pb.TagNumber(11)
  set version($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearVersion() => $_clearField(11);

  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get ignoreChanges => $_getList(11);

  @$pb.TagNumber(13)
  $core.bool get acceptSecrets => $_getBF(12);
  @$pb.TagNumber(13)
  set acceptSecrets($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(13)
  $core.bool hasAcceptSecrets() => $_has(12);
  @$pb.TagNumber(13)
  void clearAcceptSecrets() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<$core.String> get additionalSecretOutputs => $_getList(13);

  @$pb.TagNumber(15)
  $pb.PbList<$core.String> get aliasURNs => $_getList(14);

  @$pb.TagNumber(16)
  $core.String get importId => $_getSZ(15);
  @$pb.TagNumber(16)
  set importId($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasImportId() => $_has(15);
  @$pb.TagNumber(16)
  void clearImportId() => $_clearField(16);

  @$pb.TagNumber(17)
  RegisterResourceRequest_CustomTimeouts get customTimeouts => $_getN(16);
  @$pb.TagNumber(17)
  set customTimeouts(RegisterResourceRequest_CustomTimeouts value) =>
      $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasCustomTimeouts() => $_has(16);
  @$pb.TagNumber(17)
  void clearCustomTimeouts() => $_clearField(17);
  @$pb.TagNumber(17)
  RegisterResourceRequest_CustomTimeouts ensureCustomTimeouts() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.bool get deleteBeforeReplaceDefined => $_getBF(17);
  @$pb.TagNumber(18)
  set deleteBeforeReplaceDefined($core.bool value) => $_setBool(17, value);
  @$pb.TagNumber(18)
  $core.bool hasDeleteBeforeReplaceDefined() => $_has(17);
  @$pb.TagNumber(18)
  void clearDeleteBeforeReplaceDefined() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.bool get supportsPartialValues => $_getBF(18);
  @$pb.TagNumber(19)
  set supportsPartialValues($core.bool value) => $_setBool(18, value);
  @$pb.TagNumber(19)
  $core.bool hasSupportsPartialValues() => $_has(18);
  @$pb.TagNumber(19)
  void clearSupportsPartialValues() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.bool get remote => $_getBF(19);
  @$pb.TagNumber(20)
  set remote($core.bool value) => $_setBool(19, value);
  @$pb.TagNumber(20)
  $core.bool hasRemote() => $_has(19);
  @$pb.TagNumber(20)
  void clearRemote() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.bool get acceptResources => $_getBF(20);
  @$pb.TagNumber(21)
  set acceptResources($core.bool value) => $_setBool(20, value);
  @$pb.TagNumber(21)
  $core.bool hasAcceptResources() => $_has(20);
  @$pb.TagNumber(21)
  void clearAcceptResources() => $_clearField(21);

  @$pb.TagNumber(22)
  $pb.PbMap<$core.String, $core.String> get providers => $_getMap(21);

  @$pb.TagNumber(23)
  $pb.PbList<$core.String> get replaceOnChanges => $_getList(22);

  @$pb.TagNumber(24)
  $core.String get pluginDownloadURL => $_getSZ(23);
  @$pb.TagNumber(24)
  set pluginDownloadURL($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasPluginDownloadURL() => $_has(23);
  @$pb.TagNumber(24)
  void clearPluginDownloadURL() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.bool get retainOnDelete => $_getBF(24);
  @$pb.TagNumber(25)
  set retainOnDelete($core.bool value) => $_setBool(24, value);
  @$pb.TagNumber(25)
  $core.bool hasRetainOnDelete() => $_has(24);
  @$pb.TagNumber(25)
  void clearRetainOnDelete() => $_clearField(25);

  @$pb.TagNumber(26)
  $pb.PbList<$6.Alias> get aliases => $_getList(25);

  @$pb.TagNumber(27)
  $core.String get deletedWith => $_getSZ(26);
  @$pb.TagNumber(27)
  set deletedWith($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasDeletedWith() => $_has(26);
  @$pb.TagNumber(27)
  void clearDeletedWith() => $_clearField(27);

  /// Indicates that alias specs are specified correctly according to the spec.
  /// Older versions of the Node.js SDK did not send alias specs correctly.
  /// If this is not set to true and the engine detects the request is from the
  /// Node.js runtime, the engine will transform incorrect alias specs into
  /// correct ones.
  /// Other SDKs that are correctly specifying alias specs could set this to
  /// true, but it's not necessary.
  @$pb.TagNumber(28)
  $core.bool get aliasSpecs => $_getBF(27);
  @$pb.TagNumber(28)
  set aliasSpecs($core.bool value) => $_setBool(27, value);
  @$pb.TagNumber(28)
  $core.bool hasAliasSpecs() => $_has(27);
  @$pb.TagNumber(28)
  void clearAliasSpecs() => $_clearField(28);

  @$pb.TagNumber(29)
  $5.SourcePosition get sourcePosition => $_getN(28);
  @$pb.TagNumber(29)
  set sourcePosition($5.SourcePosition value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasSourcePosition() => $_has(28);
  @$pb.TagNumber(29)
  void clearSourcePosition() => $_clearField(29);
  @$pb.TagNumber(29)
  $5.SourcePosition ensureSourcePosition() => $_ensure(28);

  @$pb.TagNumber(30)
  $pb.PbMap<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(29);

  @$pb.TagNumber(31)
  $pb.PbList<$3.Callback> get transforms => $_getList(30);

  @$pb.TagNumber(32)
  $core.bool get supportsResultReporting => $_getBF(31);
  @$pb.TagNumber(32)
  set supportsResultReporting($core.bool value) => $_setBool(31, value);
  @$pb.TagNumber(32)
  $core.bool hasSupportsResultReporting() => $_has(31);
  @$pb.TagNumber(32)
  void clearSupportsResultReporting() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get packageRef => $_getSZ(32);
  @$pb.TagNumber(33)
  set packageRef($core.String value) => $_setString(32, value);
  @$pb.TagNumber(33)
  $core.bool hasPackageRef() => $_has(32);
  @$pb.TagNumber(33)
  void clearPackageRef() => $_clearField(33);

  /// The resource hooks that should run at certain points in the resource's lifecycle.
  @$pb.TagNumber(34)
  RegisterResourceRequest_ResourceHooksBinding get hooks => $_getN(33);
  @$pb.TagNumber(34)
  set hooks(RegisterResourceRequest_ResourceHooksBinding value) =>
      $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasHooks() => $_has(33);
  @$pb.TagNumber(34)
  void clearHooks() => $_clearField(34);
  @$pb.TagNumber(34)
  RegisterResourceRequest_ResourceHooksBinding ensureHooks() => $_ensure(33);

  @$pb.TagNumber(35)
  $5.StackTrace get stackTrace => $_getN(34);
  @$pb.TagNumber(35)
  set stackTrace($5.StackTrace value) => $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasStackTrace() => $_has(34);
  @$pb.TagNumber(35)
  void clearStackTrace() => $_clearField(35);
  @$pb.TagNumber(35)
  $5.StackTrace ensureStackTrace() => $_ensure(34);

  @$pb.TagNumber(36)
  $core.String get parentStackTraceHandle => $_getSZ(35);
  @$pb.TagNumber(36)
  set parentStackTraceHandle($core.String value) => $_setString(35, value);
  @$pb.TagNumber(36)
  $core.bool hasParentStackTraceHandle() => $_has(35);
  @$pb.TagNumber(36)
  void clearParentStackTraceHandle() => $_clearField(36);

  @$pb.TagNumber(37)
  $pb.PbList<$core.String> get hideDiffs => $_getList(36);

  @$pb.TagNumber(38)
  $pb.PbList<$core.String> get replaceWith => $_getList(37);

  @$pb.TagNumber(39)
  $4.Value get replacementTrigger => $_getN(38);
  @$pb.TagNumber(39)
  set replacementTrigger($4.Value value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasReplacementTrigger() => $_has(38);
  @$pb.TagNumber(39)
  void clearReplacementTrigger() => $_clearField(39);
  @$pb.TagNumber(39)
  $4.Value ensureReplacementTrigger() => $_ensure(38);

  @$pb.TagNumber(40)
  $core.String get snippetId => $_getSZ(39);
  @$pb.TagNumber(40)
  set snippetId($core.String value) => $_setString(39, value);
  @$pb.TagNumber(40)
  $core.bool hasSnippetId() => $_has(39);
  @$pb.TagNumber(40)
  void clearSnippetId() => $_clearField(40);

  @$pb.TagNumber(41)
  $pb.PbMap<$core.String, $core.String> get envVarMappings => $_getMap(40);

  /// When true operations may return strings containing bytes that are not valid UTF-8, marshaled as objects
  /// carrying the byte string signature and a base64 encoding of the string's bytes.
  @$pb.TagNumber(42)
  $core.bool get acceptsByteString => $_getBF(41);
  @$pb.TagNumber(42)
  set acceptsByteString($core.bool value) => $_setBool(41, value);
  @$pb.TagNumber(42)
  $core.bool hasAcceptsByteString() => $_has(41);
  @$pb.TagNumber(42)
  void clearAcceptsByteString() => $_clearField(42);
}

/// PropertyDependencies describes the resources that a particular property depends on.
class RegisterResourceResponse_PropertyDependencies
    extends $pb.GeneratedMessage {
  factory RegisterResourceResponse_PropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final result = create();
    if (urns != null) result.urns.addAll(urns);
    return result;
  }

  RegisterResourceResponse_PropertyDependencies._();

  factory RegisterResourceResponse_PropertyDependencies.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResourceResponse_PropertyDependencies.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceResponse.PropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceResponse_PropertyDependencies clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceResponse_PropertyDependencies copyWith(
          void Function(RegisterResourceResponse_PropertyDependencies)
              updates) =>
      super.copyWith((message) =>
              updates(message as RegisterResourceResponse_PropertyDependencies))
          as RegisterResourceResponse_PropertyDependencies;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceResponse_PropertyDependencies create() =>
      RegisterResourceResponse_PropertyDependencies._();
  @$core.override
  RegisterResourceResponse_PropertyDependencies createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceResponse_PropertyDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RegisterResourceResponse_PropertyDependencies>(create);
  static RegisterResourceResponse_PropertyDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get urns => $_getList(0);
}

/// RegisterResourceResponse is returned by the engine after a resource has finished being initialized.  It includes the
/// auto-assigned URN, the provider-assigned ID, and any other properties initialized by the engine.
class RegisterResourceResponse extends $pb.GeneratedMessage {
  factory RegisterResourceResponse({
    $core.String? urn,
    $core.String? id,
    $4.Struct? object,
    $core.bool? stable,
    $core.Iterable<$core.String>? stables,
    $core.Iterable<
            $core.MapEntry<$core.String,
                RegisterResourceResponse_PropertyDependencies>>?
        propertyDependencies,
    Result? result,
    $core.bool? unknown,
  }) {
    final result$ = create();
    if (urn != null) result$.urn = urn;
    if (id != null) result$.id = id;
    if (object != null) result$.object = object;
    if (stable != null) result$.stable = stable;
    if (stables != null) result$.stables.addAll(stables);
    if (propertyDependencies != null)
      result$.propertyDependencies.addEntries(propertyDependencies);
    if (result != null) result$.result = result;
    if (unknown != null) result$.unknown = unknown;
    return result$;
  }

  RegisterResourceResponse._();

  factory RegisterResourceResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResourceResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..aOM<$4.Struct>(3, _omitFieldNames ? '' : 'object',
        subBuilder: $4.Struct.create)
    ..aOB(4, _omitFieldNames ? '' : 'stable')
    ..pPS(5, _omitFieldNames ? '' : 'stables')
    ..m<$core.String, RegisterResourceResponse_PropertyDependencies>(
        6, _omitFieldNames ? '' : 'propertyDependencies',
        protoName: 'propertyDependencies',
        entryClassName: 'RegisterResourceResponse.PropertyDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: RegisterResourceResponse_PropertyDependencies.create,
        valueDefaultOrMaker:
            RegisterResourceResponse_PropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aE<Result>(7, _omitFieldNames ? '' : 'result', enumValues: Result.values)
    ..aOB(8, _omitFieldNames ? '' : 'unknown')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceResponse copyWith(
          void Function(RegisterResourceResponse) updates) =>
      super.copyWith((message) => updates(message as RegisterResourceResponse))
          as RegisterResourceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceResponse create() => RegisterResourceResponse._();
  @$core.override
  RegisterResourceResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResourceResponse>(create);
  static RegisterResourceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $4.Struct get object => $_getN(2);
  @$pb.TagNumber(3)
  set object($4.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasObject() => $_has(2);
  @$pb.TagNumber(3)
  void clearObject() => $_clearField(3);
  @$pb.TagNumber(3)
  $4.Struct ensureObject() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get stable => $_getBF(3);
  @$pb.TagNumber(4)
  set stable($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStable() => $_has(3);
  @$pb.TagNumber(4)
  void clearStable() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get stables => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, RegisterResourceResponse_PropertyDependencies>
      get propertyDependencies => $_getMap(5);

  @$pb.TagNumber(7)
  Result get result => $_getN(6);
  @$pb.TagNumber(7)
  set result(Result value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearResult() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get unknown => $_getBF(7);
  @$pb.TagNumber(8)
  set unknown($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasUnknown() => $_has(7);
  @$pb.TagNumber(8)
  void clearUnknown() => $_clearField(8);
}

/// RegisterResourceOutputsRequest adds extra resource outputs created by the program after registration has occurred.
class RegisterResourceOutputsRequest extends $pb.GeneratedMessage {
  factory RegisterResourceOutputsRequest({
    $core.String? urn,
    $4.Struct? outputs,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    if (outputs != null) result.outputs = outputs;
    return result;
  }

  RegisterResourceOutputsRequest._();

  factory RegisterResourceOutputsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResourceOutputsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceOutputsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$4.Struct>(2, _omitFieldNames ? '' : 'outputs',
        subBuilder: $4.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceOutputsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceOutputsRequest copyWith(
          void Function(RegisterResourceOutputsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RegisterResourceOutputsRequest))
          as RegisterResourceOutputsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceOutputsRequest create() =>
      RegisterResourceOutputsRequest._();
  @$core.override
  RegisterResourceOutputsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceOutputsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResourceOutputsRequest>(create);
  static RegisterResourceOutputsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  @$pb.TagNumber(2)
  $4.Struct get outputs => $_getN(1);
  @$pb.TagNumber(2)
  set outputs($4.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOutputs() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutputs() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.Struct ensureOutputs() => $_ensure(1);
}

class ResourceInvokeRequest extends $pb.GeneratedMessage {
  factory ResourceInvokeRequest({
    $core.String? tok,
    $4.Struct? args,
    $core.String? provider,
    $core.String? version,
    $core.bool? acceptResources,
    $core.String? pluginDownloadURL,
    $5.SourcePosition? sourcePosition,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        pluginChecksums,
    $core.String? packageRef,
    $5.StackTrace? stackTrace,
    $core.String? parentStackTraceHandle,
    $core.bool? acceptsByteString,
    $core.Iterable<$core.String>? dependsOn,
    $core.String? parent,
  }) {
    final result = create();
    if (tok != null) result.tok = tok;
    if (args != null) result.args = args;
    if (provider != null) result.provider = provider;
    if (version != null) result.version = version;
    if (acceptResources != null) result.acceptResources = acceptResources;
    if (pluginDownloadURL != null) result.pluginDownloadURL = pluginDownloadURL;
    if (sourcePosition != null) result.sourcePosition = sourcePosition;
    if (pluginChecksums != null)
      result.pluginChecksums.addEntries(pluginChecksums);
    if (packageRef != null) result.packageRef = packageRef;
    if (stackTrace != null) result.stackTrace = stackTrace;
    if (parentStackTraceHandle != null)
      result.parentStackTraceHandle = parentStackTraceHandle;
    if (acceptsByteString != null) result.acceptsByteString = acceptsByteString;
    if (dependsOn != null) result.dependsOn.addAll(dependsOn);
    if (parent != null) result.parent = parent;
    return result;
  }

  ResourceInvokeRequest._();

  factory ResourceInvokeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceInvokeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceInvokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tok')
    ..aOM<$4.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $4.Struct.create)
    ..aOS(3, _omitFieldNames ? '' : 'provider')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOB(5, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..aOS(6, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOM<$5.SourcePosition>(7, _omitFieldNames ? '' : 'sourcePosition',
        protoName: 'sourcePosition', subBuilder: $5.SourcePosition.create)
    ..m<$core.String, $core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'pluginChecksums',
        protoName: 'pluginChecksums',
        entryClassName: 'ResourceInvokeRequest.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(9, _omitFieldNames ? '' : 'packageRef', protoName: 'packageRef')
    ..aOM<$5.StackTrace>(10, _omitFieldNames ? '' : 'stackTrace',
        protoName: 'stackTrace', subBuilder: $5.StackTrace.create)
    ..aOS(11, _omitFieldNames ? '' : 'parentStackTraceHandle',
        protoName: 'parentStackTraceHandle')
    ..aOB(12, _omitFieldNames ? '' : 'acceptsByteString')
    ..pPS(13, _omitFieldNames ? '' : 'dependsOn', protoName: 'dependsOn')
    ..aOS(15, _omitFieldNames ? '' : 'parent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceInvokeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceInvokeRequest copyWith(
          void Function(ResourceInvokeRequest) updates) =>
      super.copyWith((message) => updates(message as ResourceInvokeRequest))
          as ResourceInvokeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceInvokeRequest create() => ResourceInvokeRequest._();
  @$core.override
  ResourceInvokeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceInvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceInvokeRequest>(create);
  static ResourceInvokeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tok => $_getSZ(0);
  @$pb.TagNumber(1)
  set tok($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTok() => $_has(0);
  @$pb.TagNumber(1)
  void clearTok() => $_clearField(1);

  @$pb.TagNumber(2)
  $4.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($4.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.Struct ensureArgs() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get provider => $_getSZ(2);
  @$pb.TagNumber(3)
  set provider($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProvider() => $_has(2);
  @$pb.TagNumber(3)
  void clearProvider() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get acceptResources => $_getBF(4);
  @$pb.TagNumber(5)
  set acceptResources($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAcceptResources() => $_has(4);
  @$pb.TagNumber(5)
  void clearAcceptResources() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get pluginDownloadURL => $_getSZ(5);
  @$pb.TagNumber(6)
  set pluginDownloadURL($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPluginDownloadURL() => $_has(5);
  @$pb.TagNumber(6)
  void clearPluginDownloadURL() => $_clearField(6);

  @$pb.TagNumber(7)
  $5.SourcePosition get sourcePosition => $_getN(6);
  @$pb.TagNumber(7)
  set sourcePosition($5.SourcePosition value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSourcePosition() => $_has(6);
  @$pb.TagNumber(7)
  void clearSourcePosition() => $_clearField(7);
  @$pb.TagNumber(7)
  $5.SourcePosition ensureSourcePosition() => $_ensure(6);

  @$pb.TagNumber(8)
  $pb.PbMap<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(7);

  @$pb.TagNumber(9)
  $core.String get packageRef => $_getSZ(8);
  @$pb.TagNumber(9)
  set packageRef($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPackageRef() => $_has(8);
  @$pb.TagNumber(9)
  void clearPackageRef() => $_clearField(9);

  @$pb.TagNumber(10)
  $5.StackTrace get stackTrace => $_getN(9);
  @$pb.TagNumber(10)
  set stackTrace($5.StackTrace value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasStackTrace() => $_has(9);
  @$pb.TagNumber(10)
  void clearStackTrace() => $_clearField(10);
  @$pb.TagNumber(10)
  $5.StackTrace ensureStackTrace() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.String get parentStackTraceHandle => $_getSZ(10);
  @$pb.TagNumber(11)
  set parentStackTraceHandle($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasParentStackTraceHandle() => $_has(10);
  @$pb.TagNumber(11)
  void clearParentStackTraceHandle() => $_clearField(11);

  /// When true operations may return strings containing bytes that are not valid UTF-8, marshaled as objects
  /// carrying the byte string signature and a base64 encoding of the string's bytes.
  @$pb.TagNumber(12)
  $core.bool get acceptsByteString => $_getBF(11);
  @$pb.TagNumber(12)
  set acceptsByteString($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasAcceptsByteString() => $_has(11);
  @$pb.TagNumber(12)
  void clearAcceptsByteString() => $_clearField(12);

  /// The URNs of the resources this invoke depends on.
  ///
  /// The engine will advertise `INVOKE_DEPENDS_ON` when it reads this field.
  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get dependsOn => $_getList(12);

  /// An optional URN of the resource this invoke is parented to. When `provider` is empty, the invoke is served by
  /// the provider its parent's `providers` option names for the invoke's package, the same resolution applied to
  /// resource registrations. Only respected when the monitor advertises `INVOKE_PARENT`.
  @$pb.TagNumber(15)
  $core.String get parent => $_getSZ(13);
  @$pb.TagNumber(15)
  set parent($core.String value) => $_setString(13, value);
  @$pb.TagNumber(15)
  $core.bool hasParent() => $_has(13);
  @$pb.TagNumber(15)
  void clearParent() => $_clearField(15);
}

class ResourceInvokeResponse extends $pb.GeneratedMessage {
  factory ResourceInvokeResponse({
    $4.Struct? return_1,
    $core.Iterable<$2.CheckFailure>? failures,
    $core.bool? unknown,
  }) {
    final result = create();
    if (return_1 != null) result.return_1 = return_1;
    if (failures != null) result.failures.addAll(failures);
    if (unknown != null) result.unknown = unknown;
    return result;
  }

  ResourceInvokeResponse._();

  factory ResourceInvokeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceInvokeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceInvokeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$4.Struct>(1, _omitFieldNames ? '' : 'return',
        subBuilder: $4.Struct.create)
    ..pPM<$2.CheckFailure>(2, _omitFieldNames ? '' : 'failures',
        subBuilder: $2.CheckFailure.create)
    ..aOB(3, _omitFieldNames ? '' : 'unknown')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceInvokeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceInvokeResponse copyWith(
          void Function(ResourceInvokeResponse) updates) =>
      super.copyWith((message) => updates(message as ResourceInvokeResponse))
          as ResourceInvokeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceInvokeResponse create() => ResourceInvokeResponse._();
  @$core.override
  ResourceInvokeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceInvokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceInvokeResponse>(create);
  static ResourceInvokeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Struct get return_1 => $_getN(0);
  @$pb.TagNumber(1)
  set return_1($4.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasReturn_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturn_1() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.Struct ensureReturn_1() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$2.CheckFailure> get failures => $_getList(1);

  /// True if the result must be treated as wholly unknown, which the monitor reports when it declines to service an
  /// invoke whose dependencies are pending creation.
  @$pb.TagNumber(3)
  $core.bool get unknown => $_getBF(2);
  @$pb.TagNumber(3)
  set unknown($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUnknown() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnknown() => $_clearField(3);
}

/// ArgumentDependencies describes the resources that a particular argument depends on.
class ResourceCallRequest_ArgumentDependencies extends $pb.GeneratedMessage {
  factory ResourceCallRequest_ArgumentDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final result = create();
    if (urns != null) result.urns.addAll(urns);
    return result;
  }

  ResourceCallRequest_ArgumentDependencies._();

  factory ResourceCallRequest_ArgumentDependencies.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceCallRequest_ArgumentDependencies.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceCallRequest.ArgumentDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceCallRequest_ArgumentDependencies clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceCallRequest_ArgumentDependencies copyWith(
          void Function(ResourceCallRequest_ArgumentDependencies) updates) =>
      super.copyWith((message) =>
              updates(message as ResourceCallRequest_ArgumentDependencies))
          as ResourceCallRequest_ArgumentDependencies;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceCallRequest_ArgumentDependencies create() =>
      ResourceCallRequest_ArgumentDependencies._();
  @$core.override
  ResourceCallRequest_ArgumentDependencies createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceCallRequest_ArgumentDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ResourceCallRequest_ArgumentDependencies>(create);
  static ResourceCallRequest_ArgumentDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get urns => $_getList(0);
}

class ResourceCallRequest extends $pb.GeneratedMessage {
  factory ResourceCallRequest({
    $core.String? tok,
    $4.Struct? args,
    $core.Iterable<
            $core
            .MapEntry<$core.String, ResourceCallRequest_ArgumentDependencies>>?
        argDependencies,
    $core.String? provider,
    $core.String? version,
    $core.String? pluginDownloadURL,
    $5.SourcePosition? sourcePosition,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        pluginChecksums,
    $core.String? packageRef,
    $5.StackTrace? stackTrace,
    $core.String? parentStackTraceHandle,
    $core.bool? acceptsByteString,
  }) {
    final result = create();
    if (tok != null) result.tok = tok;
    if (args != null) result.args = args;
    if (argDependencies != null)
      result.argDependencies.addEntries(argDependencies);
    if (provider != null) result.provider = provider;
    if (version != null) result.version = version;
    if (pluginDownloadURL != null) result.pluginDownloadURL = pluginDownloadURL;
    if (sourcePosition != null) result.sourcePosition = sourcePosition;
    if (pluginChecksums != null)
      result.pluginChecksums.addEntries(pluginChecksums);
    if (packageRef != null) result.packageRef = packageRef;
    if (stackTrace != null) result.stackTrace = stackTrace;
    if (parentStackTraceHandle != null)
      result.parentStackTraceHandle = parentStackTraceHandle;
    if (acceptsByteString != null) result.acceptsByteString = acceptsByteString;
    return result;
  }

  ResourceCallRequest._();

  factory ResourceCallRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceCallRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceCallRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tok')
    ..aOM<$4.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $4.Struct.create)
    ..m<$core.String, ResourceCallRequest_ArgumentDependencies>(
        3, _omitFieldNames ? '' : 'argDependencies',
        protoName: 'argDependencies',
        entryClassName: 'ResourceCallRequest.ArgDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ResourceCallRequest_ArgumentDependencies.create,
        valueDefaultOrMaker:
            ResourceCallRequest_ArgumentDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(4, _omitFieldNames ? '' : 'provider')
    ..aOS(5, _omitFieldNames ? '' : 'version')
    ..aOS(13, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOM<$5.SourcePosition>(15, _omitFieldNames ? '' : 'sourcePosition',
        protoName: 'sourcePosition', subBuilder: $5.SourcePosition.create)
    ..m<$core.String, $core.List<$core.int>>(
        16, _omitFieldNames ? '' : 'pluginChecksums',
        protoName: 'pluginChecksums',
        entryClassName: 'ResourceCallRequest.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(17, _omitFieldNames ? '' : 'packageRef', protoName: 'packageRef')
    ..aOM<$5.StackTrace>(18, _omitFieldNames ? '' : 'stackTrace',
        protoName: 'stackTrace', subBuilder: $5.StackTrace.create)
    ..aOS(19, _omitFieldNames ? '' : 'parentStackTraceHandle',
        protoName: 'parentStackTraceHandle')
    ..aOB(20, _omitFieldNames ? '' : 'acceptsByteString')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceCallRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceCallRequest copyWith(void Function(ResourceCallRequest) updates) =>
      super.copyWith((message) => updates(message as ResourceCallRequest))
          as ResourceCallRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceCallRequest create() => ResourceCallRequest._();
  @$core.override
  ResourceCallRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceCallRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceCallRequest>(create);
  static ResourceCallRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tok => $_getSZ(0);
  @$pb.TagNumber(1)
  set tok($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTok() => $_has(0);
  @$pb.TagNumber(1)
  void clearTok() => $_clearField(1);

  @$pb.TagNumber(2)
  $4.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($4.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.Struct ensureArgs() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, ResourceCallRequest_ArgumentDependencies>
      get argDependencies => $_getMap(2);

  @$pb.TagNumber(4)
  $core.String get provider => $_getSZ(3);
  @$pb.TagNumber(4)
  set provider($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasProvider() => $_has(3);
  @$pb.TagNumber(4)
  void clearProvider() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => $_clearField(5);

  @$pb.TagNumber(13)
  $core.String get pluginDownloadURL => $_getSZ(5);
  @$pb.TagNumber(13)
  set pluginDownloadURL($core.String value) => $_setString(5, value);
  @$pb.TagNumber(13)
  $core.bool hasPluginDownloadURL() => $_has(5);
  @$pb.TagNumber(13)
  void clearPluginDownloadURL() => $_clearField(13);

  @$pb.TagNumber(15)
  $5.SourcePosition get sourcePosition => $_getN(6);
  @$pb.TagNumber(15)
  set sourcePosition($5.SourcePosition value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasSourcePosition() => $_has(6);
  @$pb.TagNumber(15)
  void clearSourcePosition() => $_clearField(15);
  @$pb.TagNumber(15)
  $5.SourcePosition ensureSourcePosition() => $_ensure(6);

  @$pb.TagNumber(16)
  $pb.PbMap<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(7);

  @$pb.TagNumber(17)
  $core.String get packageRef => $_getSZ(8);
  @$pb.TagNumber(17)
  set packageRef($core.String value) => $_setString(8, value);
  @$pb.TagNumber(17)
  $core.bool hasPackageRef() => $_has(8);
  @$pb.TagNumber(17)
  void clearPackageRef() => $_clearField(17);

  @$pb.TagNumber(18)
  $5.StackTrace get stackTrace => $_getN(9);
  @$pb.TagNumber(18)
  set stackTrace($5.StackTrace value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasStackTrace() => $_has(9);
  @$pb.TagNumber(18)
  void clearStackTrace() => $_clearField(18);
  @$pb.TagNumber(18)
  $5.StackTrace ensureStackTrace() => $_ensure(9);

  @$pb.TagNumber(19)
  $core.String get parentStackTraceHandle => $_getSZ(10);
  @$pb.TagNumber(19)
  set parentStackTraceHandle($core.String value) => $_setString(10, value);
  @$pb.TagNumber(19)
  $core.bool hasParentStackTraceHandle() => $_has(10);
  @$pb.TagNumber(19)
  void clearParentStackTraceHandle() => $_clearField(19);

  /// When true operations may return strings containing bytes that are not valid UTF-8, marshaled as objects
  /// carrying the byte string signature and a base64 encoding of the string's bytes.
  @$pb.TagNumber(20)
  $core.bool get acceptsByteString => $_getBF(11);
  @$pb.TagNumber(20)
  set acceptsByteString($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(20)
  $core.bool hasAcceptsByteString() => $_has(11);
  @$pb.TagNumber(20)
  void clearAcceptsByteString() => $_clearField(20);
}

/// TransformResourceOptions is a subset of all resource options that are relevant to transforms.
class TransformResourceOptions extends $pb.GeneratedMessage {
  factory TransformResourceOptions({
    $core.Iterable<$core.String>? dependsOn,
    $core.bool? protect,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.Iterable<$core.String>? replaceOnChanges,
    $core.String? version,
    $core.Iterable<$6.Alias>? aliases,
    $core.String? provider,
    RegisterResourceRequest_CustomTimeouts? customTimeouts,
    $core.String? pluginDownloadUrl,
    $core.bool? retainOnDelete,
    $core.String? deletedWith,
    $core.bool? deleteBeforeReplace,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? providers,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        pluginChecksums,
    RegisterResourceRequest_ResourceHooksBinding? hooks,
    $core.String? import,
    $core.Iterable<$core.String>? hideDiff,
    $core.Iterable<$core.String>? replaceWith,
    $4.Value? replacementTrigger,
  }) {
    final result = create();
    if (dependsOn != null) result.dependsOn.addAll(dependsOn);
    if (protect != null) result.protect = protect;
    if (ignoreChanges != null) result.ignoreChanges.addAll(ignoreChanges);
    if (replaceOnChanges != null)
      result.replaceOnChanges.addAll(replaceOnChanges);
    if (version != null) result.version = version;
    if (aliases != null) result.aliases.addAll(aliases);
    if (provider != null) result.provider = provider;
    if (customTimeouts != null) result.customTimeouts = customTimeouts;
    if (pluginDownloadUrl != null) result.pluginDownloadUrl = pluginDownloadUrl;
    if (retainOnDelete != null) result.retainOnDelete = retainOnDelete;
    if (deletedWith != null) result.deletedWith = deletedWith;
    if (deleteBeforeReplace != null)
      result.deleteBeforeReplace = deleteBeforeReplace;
    if (additionalSecretOutputs != null)
      result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    if (providers != null) result.providers.addEntries(providers);
    if (pluginChecksums != null)
      result.pluginChecksums.addEntries(pluginChecksums);
    if (hooks != null) result.hooks = hooks;
    if (import != null) result.import = import;
    if (hideDiff != null) result.hideDiff.addAll(hideDiff);
    if (replaceWith != null) result.replaceWith.addAll(replaceWith);
    if (replacementTrigger != null)
      result.replacementTrigger = replacementTrigger;
    return result;
  }

  TransformResourceOptions._();

  factory TransformResourceOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransformResourceOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformResourceOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'dependsOn')
    ..aOB(2, _omitFieldNames ? '' : 'protect')
    ..pPS(3, _omitFieldNames ? '' : 'ignoreChanges')
    ..pPS(4, _omitFieldNames ? '' : 'replaceOnChanges')
    ..aOS(5, _omitFieldNames ? '' : 'version')
    ..pPM<$6.Alias>(6, _omitFieldNames ? '' : 'aliases',
        subBuilder: $6.Alias.create)
    ..aOS(7, _omitFieldNames ? '' : 'provider')
    ..aOM<RegisterResourceRequest_CustomTimeouts>(
        8, _omitFieldNames ? '' : 'customTimeouts',
        subBuilder: RegisterResourceRequest_CustomTimeouts.create)
    ..aOS(9, _omitFieldNames ? '' : 'pluginDownloadUrl')
    ..aOB(10, _omitFieldNames ? '' : 'retainOnDelete')
    ..aOS(11, _omitFieldNames ? '' : 'deletedWith')
    ..aOB(12, _omitFieldNames ? '' : 'deleteBeforeReplace')
    ..pPS(13, _omitFieldNames ? '' : 'additionalSecretOutputs')
    ..m<$core.String, $core.String>(14, _omitFieldNames ? '' : 'providers',
        entryClassName: 'TransformResourceOptions.ProvidersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..m<$core.String, $core.List<$core.int>>(
        15, _omitFieldNames ? '' : 'pluginChecksums',
        entryClassName: 'TransformResourceOptions.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOM<RegisterResourceRequest_ResourceHooksBinding>(
        16, _omitFieldNames ? '' : 'hooks',
        subBuilder: RegisterResourceRequest_ResourceHooksBinding.create)
    ..aOS(17, _omitFieldNames ? '' : 'import')
    ..pPS(18, _omitFieldNames ? '' : 'hideDiff')
    ..pPS(19, _omitFieldNames ? '' : 'replaceWith')
    ..aOM<$4.Value>(20, _omitFieldNames ? '' : 'replacementTrigger',
        subBuilder: $4.Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformResourceOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformResourceOptions copyWith(
          void Function(TransformResourceOptions) updates) =>
      super.copyWith((message) => updates(message as TransformResourceOptions))
          as TransformResourceOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformResourceOptions create() => TransformResourceOptions._();
  @$core.override
  TransformResourceOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransformResourceOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformResourceOptions>(create);
  static TransformResourceOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get dependsOn => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get protect => $_getBF(1);
  @$pb.TagNumber(2)
  set protect($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProtect() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtect() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get ignoreChanges => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get replaceOnChanges => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$6.Alias> get aliases => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get provider => $_getSZ(6);
  @$pb.TagNumber(7)
  set provider($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasProvider() => $_has(6);
  @$pb.TagNumber(7)
  void clearProvider() => $_clearField(7);

  @$pb.TagNumber(8)
  RegisterResourceRequest_CustomTimeouts get customTimeouts => $_getN(7);
  @$pb.TagNumber(8)
  set customTimeouts(RegisterResourceRequest_CustomTimeouts value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCustomTimeouts() => $_has(7);
  @$pb.TagNumber(8)
  void clearCustomTimeouts() => $_clearField(8);
  @$pb.TagNumber(8)
  RegisterResourceRequest_CustomTimeouts ensureCustomTimeouts() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get pluginDownloadUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set pluginDownloadUrl($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPluginDownloadUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearPluginDownloadUrl() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get retainOnDelete => $_getBF(9);
  @$pb.TagNumber(10)
  set retainOnDelete($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRetainOnDelete() => $_has(9);
  @$pb.TagNumber(10)
  void clearRetainOnDelete() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get deletedWith => $_getSZ(10);
  @$pb.TagNumber(11)
  set deletedWith($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDeletedWith() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeletedWith() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get deleteBeforeReplace => $_getBF(11);
  @$pb.TagNumber(12)
  set deleteBeforeReplace($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDeleteBeforeReplace() => $_has(11);
  @$pb.TagNumber(12)
  void clearDeleteBeforeReplace() => $_clearField(12);

  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get additionalSecretOutputs => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbMap<$core.String, $core.String> get providers => $_getMap(13);

  @$pb.TagNumber(15)
  $pb.PbMap<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(14);

  @$pb.TagNumber(16)
  RegisterResourceRequest_ResourceHooksBinding get hooks => $_getN(15);
  @$pb.TagNumber(16)
  set hooks(RegisterResourceRequest_ResourceHooksBinding value) =>
      $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasHooks() => $_has(15);
  @$pb.TagNumber(16)
  void clearHooks() => $_clearField(16);
  @$pb.TagNumber(16)
  RegisterResourceRequest_ResourceHooksBinding ensureHooks() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.String get import => $_getSZ(16);
  @$pb.TagNumber(17)
  set import($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasImport() => $_has(16);
  @$pb.TagNumber(17)
  void clearImport() => $_clearField(17);

  @$pb.TagNumber(18)
  $pb.PbList<$core.String> get hideDiff => $_getList(17);

  @$pb.TagNumber(19)
  $pb.PbList<$core.String> get replaceWith => $_getList(18);

  @$pb.TagNumber(20)
  $4.Value get replacementTrigger => $_getN(19);
  @$pb.TagNumber(20)
  set replacementTrigger($4.Value value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasReplacementTrigger() => $_has(19);
  @$pb.TagNumber(20)
  void clearReplacementTrigger() => $_clearField(20);
  @$pb.TagNumber(20)
  $4.Value ensureReplacementTrigger() => $_ensure(19);
}

/// ResourceOptions is a subset of all resource options that are relevant to
/// hook callbacks.
class ResourceOptions extends $pb.GeneratedMessage {
  factory ResourceOptions({
    $core.Iterable<$core.String>? dependsOn,
    $core.bool? protect,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.Iterable<$core.String>? replaceOnChanges,
    $core.String? version,
    $core.Iterable<$6.Alias>? aliases,
    $core.String? provider,
    RegisterResourceRequest_CustomTimeouts? customTimeouts,
    $core.String? pluginDownloadUrl,
    $core.bool? retainOnDelete,
    $core.String? deletedWith,
    $core.bool? deleteBeforeReplace,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? providers,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        pluginChecksums,
    RegisterResourceRequest_ResourceHooksBinding? hooks,
    $core.String? import,
    $core.Iterable<$core.String>? hideDiff,
    $core.Iterable<$core.String>? replaceWith,
    $4.Value? replacementTrigger,
    $core.String? parent,
  }) {
    final result = create();
    if (dependsOn != null) result.dependsOn.addAll(dependsOn);
    if (protect != null) result.protect = protect;
    if (ignoreChanges != null) result.ignoreChanges.addAll(ignoreChanges);
    if (replaceOnChanges != null)
      result.replaceOnChanges.addAll(replaceOnChanges);
    if (version != null) result.version = version;
    if (aliases != null) result.aliases.addAll(aliases);
    if (provider != null) result.provider = provider;
    if (customTimeouts != null) result.customTimeouts = customTimeouts;
    if (pluginDownloadUrl != null) result.pluginDownloadUrl = pluginDownloadUrl;
    if (retainOnDelete != null) result.retainOnDelete = retainOnDelete;
    if (deletedWith != null) result.deletedWith = deletedWith;
    if (deleteBeforeReplace != null)
      result.deleteBeforeReplace = deleteBeforeReplace;
    if (additionalSecretOutputs != null)
      result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    if (providers != null) result.providers.addEntries(providers);
    if (pluginChecksums != null)
      result.pluginChecksums.addEntries(pluginChecksums);
    if (hooks != null) result.hooks = hooks;
    if (import != null) result.import = import;
    if (hideDiff != null) result.hideDiff.addAll(hideDiff);
    if (replaceWith != null) result.replaceWith.addAll(replaceWith);
    if (replacementTrigger != null)
      result.replacementTrigger = replacementTrigger;
    if (parent != null) result.parent = parent;
    return result;
  }

  ResourceOptions._();

  factory ResourceOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'dependsOn')
    ..aOB(2, _omitFieldNames ? '' : 'protect')
    ..pPS(3, _omitFieldNames ? '' : 'ignoreChanges')
    ..pPS(4, _omitFieldNames ? '' : 'replaceOnChanges')
    ..aOS(5, _omitFieldNames ? '' : 'version')
    ..pPM<$6.Alias>(6, _omitFieldNames ? '' : 'aliases',
        subBuilder: $6.Alias.create)
    ..aOS(7, _omitFieldNames ? '' : 'provider')
    ..aOM<RegisterResourceRequest_CustomTimeouts>(
        8, _omitFieldNames ? '' : 'customTimeouts',
        subBuilder: RegisterResourceRequest_CustomTimeouts.create)
    ..aOS(9, _omitFieldNames ? '' : 'pluginDownloadUrl')
    ..aOB(10, _omitFieldNames ? '' : 'retainOnDelete')
    ..aOS(11, _omitFieldNames ? '' : 'deletedWith')
    ..aOB(12, _omitFieldNames ? '' : 'deleteBeforeReplace')
    ..pPS(13, _omitFieldNames ? '' : 'additionalSecretOutputs')
    ..m<$core.String, $core.String>(14, _omitFieldNames ? '' : 'providers',
        entryClassName: 'ResourceOptions.ProvidersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..m<$core.String, $core.List<$core.int>>(
        15, _omitFieldNames ? '' : 'pluginChecksums',
        entryClassName: 'ResourceOptions.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOM<RegisterResourceRequest_ResourceHooksBinding>(
        16, _omitFieldNames ? '' : 'hooks',
        subBuilder: RegisterResourceRequest_ResourceHooksBinding.create)
    ..aOS(17, _omitFieldNames ? '' : 'import')
    ..pPS(18, _omitFieldNames ? '' : 'hideDiff')
    ..pPS(19, _omitFieldNames ? '' : 'replaceWith')
    ..aOM<$4.Value>(20, _omitFieldNames ? '' : 'replacementTrigger',
        subBuilder: $4.Value.create)
    ..aOS(21, _omitFieldNames ? '' : 'parent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceOptions copyWith(void Function(ResourceOptions) updates) =>
      super.copyWith((message) => updates(message as ResourceOptions))
          as ResourceOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceOptions create() => ResourceOptions._();
  @$core.override
  ResourceOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceOptions>(create);
  static ResourceOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get dependsOn => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get protect => $_getBF(1);
  @$pb.TagNumber(2)
  set protect($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProtect() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtect() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get ignoreChanges => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get replaceOnChanges => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$6.Alias> get aliases => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get provider => $_getSZ(6);
  @$pb.TagNumber(7)
  set provider($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasProvider() => $_has(6);
  @$pb.TagNumber(7)
  void clearProvider() => $_clearField(7);

  @$pb.TagNumber(8)
  RegisterResourceRequest_CustomTimeouts get customTimeouts => $_getN(7);
  @$pb.TagNumber(8)
  set customTimeouts(RegisterResourceRequest_CustomTimeouts value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCustomTimeouts() => $_has(7);
  @$pb.TagNumber(8)
  void clearCustomTimeouts() => $_clearField(8);
  @$pb.TagNumber(8)
  RegisterResourceRequest_CustomTimeouts ensureCustomTimeouts() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get pluginDownloadUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set pluginDownloadUrl($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPluginDownloadUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearPluginDownloadUrl() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get retainOnDelete => $_getBF(9);
  @$pb.TagNumber(10)
  set retainOnDelete($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRetainOnDelete() => $_has(9);
  @$pb.TagNumber(10)
  void clearRetainOnDelete() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get deletedWith => $_getSZ(10);
  @$pb.TagNumber(11)
  set deletedWith($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDeletedWith() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeletedWith() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get deleteBeforeReplace => $_getBF(11);
  @$pb.TagNumber(12)
  set deleteBeforeReplace($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDeleteBeforeReplace() => $_has(11);
  @$pb.TagNumber(12)
  void clearDeleteBeforeReplace() => $_clearField(12);

  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get additionalSecretOutputs => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbMap<$core.String, $core.String> get providers => $_getMap(13);

  @$pb.TagNumber(15)
  $pb.PbMap<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(14);

  @$pb.TagNumber(16)
  RegisterResourceRequest_ResourceHooksBinding get hooks => $_getN(15);
  @$pb.TagNumber(16)
  set hooks(RegisterResourceRequest_ResourceHooksBinding value) =>
      $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasHooks() => $_has(15);
  @$pb.TagNumber(16)
  void clearHooks() => $_clearField(16);
  @$pb.TagNumber(16)
  RegisterResourceRequest_ResourceHooksBinding ensureHooks() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.String get import => $_getSZ(16);
  @$pb.TagNumber(17)
  set import($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasImport() => $_has(16);
  @$pb.TagNumber(17)
  void clearImport() => $_clearField(17);

  @$pb.TagNumber(18)
  $pb.PbList<$core.String> get hideDiff => $_getList(17);

  @$pb.TagNumber(19)
  $pb.PbList<$core.String> get replaceWith => $_getList(18);

  @$pb.TagNumber(20)
  $4.Value get replacementTrigger => $_getN(19);
  @$pb.TagNumber(20)
  set replacementTrigger($4.Value value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasReplacementTrigger() => $_has(19);
  @$pb.TagNumber(20)
  void clearReplacementTrigger() => $_clearField(20);
  @$pb.TagNumber(20)
  $4.Value ensureReplacementTrigger() => $_ensure(19);

  @$pb.TagNumber(21)
  $core.String get parent => $_getSZ(20);
  @$pb.TagNumber(21)
  set parent($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasParent() => $_has(20);
  @$pb.TagNumber(21)
  void clearParent() => $_clearField(21);
}

class TransformRequest extends $pb.GeneratedMessage {
  factory TransformRequest({
    $core.String? type,
    $core.String? name,
    $core.bool? custom,
    $core.String? parent,
    $4.Struct? properties,
    TransformResourceOptions? options,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (custom != null) result.custom = custom;
    if (parent != null) result.parent = parent;
    if (properties != null) result.properties = properties;
    if (options != null) result.options = options;
    return result;
  }

  TransformRequest._();

  factory TransformRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransformRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'custom')
    ..aOS(4, _omitFieldNames ? '' : 'parent')
    ..aOM<$4.Struct>(5, _omitFieldNames ? '' : 'properties',
        subBuilder: $4.Struct.create)
    ..aOM<TransformResourceOptions>(6, _omitFieldNames ? '' : 'options',
        subBuilder: TransformResourceOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformRequest copyWith(void Function(TransformRequest) updates) =>
      super.copyWith((message) => updates(message as TransformRequest))
          as TransformRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformRequest create() => TransformRequest._();
  @$core.override
  TransformRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransformRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformRequest>(create);
  static TransformRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get custom => $_getBF(2);
  @$pb.TagNumber(3)
  set custom($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCustom() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustom() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get parent => $_getSZ(3);
  @$pb.TagNumber(4)
  set parent($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasParent() => $_has(3);
  @$pb.TagNumber(4)
  void clearParent() => $_clearField(4);

  @$pb.TagNumber(5)
  $4.Struct get properties => $_getN(4);
  @$pb.TagNumber(5)
  set properties($4.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasProperties() => $_has(4);
  @$pb.TagNumber(5)
  void clearProperties() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.Struct ensureProperties() => $_ensure(4);

  @$pb.TagNumber(6)
  TransformResourceOptions get options => $_getN(5);
  @$pb.TagNumber(6)
  set options(TransformResourceOptions value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOptions() => $_has(5);
  @$pb.TagNumber(6)
  void clearOptions() => $_clearField(6);
  @$pb.TagNumber(6)
  TransformResourceOptions ensureOptions() => $_ensure(5);
}

class TransformResponse extends $pb.GeneratedMessage {
  factory TransformResponse({
    $4.Struct? properties,
    TransformResourceOptions? options,
  }) {
    final result = create();
    if (properties != null) result.properties = properties;
    if (options != null) result.options = options;
    return result;
  }

  TransformResponse._();

  factory TransformResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransformResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$4.Struct>(1, _omitFieldNames ? '' : 'properties',
        subBuilder: $4.Struct.create)
    ..aOM<TransformResourceOptions>(2, _omitFieldNames ? '' : 'options',
        subBuilder: TransformResourceOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformResponse copyWith(void Function(TransformResponse) updates) =>
      super.copyWith((message) => updates(message as TransformResponse))
          as TransformResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformResponse create() => TransformResponse._();
  @$core.override
  TransformResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransformResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformResponse>(create);
  static TransformResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Struct get properties => $_getN(0);
  @$pb.TagNumber(1)
  set properties($4.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProperties() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperties() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.Struct ensureProperties() => $_ensure(0);

  @$pb.TagNumber(2)
  TransformResourceOptions get options => $_getN(1);
  @$pb.TagNumber(2)
  set options(TransformResourceOptions value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => $_clearField(2);
  @$pb.TagNumber(2)
  TransformResourceOptions ensureOptions() => $_ensure(1);
}

/// TransformInvokeRequest is the request object for the TransformInvoke RPC.
class TransformInvokeRequest extends $pb.GeneratedMessage {
  factory TransformInvokeRequest({
    $core.String? token,
    $4.Struct? args,
    TransformInvokeOptions? options,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (args != null) result.args = args;
    if (options != null) result.options = options;
    return result;
  }

  TransformInvokeRequest._();

  factory TransformInvokeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransformInvokeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformInvokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOM<$4.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $4.Struct.create)
    ..aOM<TransformInvokeOptions>(3, _omitFieldNames ? '' : 'options',
        subBuilder: TransformInvokeOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformInvokeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformInvokeRequest copyWith(
          void Function(TransformInvokeRequest) updates) =>
      super.copyWith((message) => updates(message as TransformInvokeRequest))
          as TransformInvokeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformInvokeRequest create() => TransformInvokeRequest._();
  @$core.override
  TransformInvokeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransformInvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformInvokeRequest>(create);
  static TransformInvokeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $4.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($4.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.Struct ensureArgs() => $_ensure(1);

  @$pb.TagNumber(3)
  TransformInvokeOptions get options => $_getN(2);
  @$pb.TagNumber(3)
  set options(TransformInvokeOptions value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOptions() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptions() => $_clearField(3);
  @$pb.TagNumber(3)
  TransformInvokeOptions ensureOptions() => $_ensure(2);
}

/// TransformInvokeResponse is the response object for the TransformInvoke RPC.
class TransformInvokeResponse extends $pb.GeneratedMessage {
  factory TransformInvokeResponse({
    $4.Struct? args,
    TransformInvokeOptions? options,
  }) {
    final result = create();
    if (args != null) result.args = args;
    if (options != null) result.options = options;
    return result;
  }

  TransformInvokeResponse._();

  factory TransformInvokeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransformInvokeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformInvokeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$4.Struct>(1, _omitFieldNames ? '' : 'args',
        subBuilder: $4.Struct.create)
    ..aOM<TransformInvokeOptions>(2, _omitFieldNames ? '' : 'options',
        subBuilder: TransformInvokeOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformInvokeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformInvokeResponse copyWith(
          void Function(TransformInvokeResponse) updates) =>
      super.copyWith((message) => updates(message as TransformInvokeResponse))
          as TransformInvokeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformInvokeResponse create() => TransformInvokeResponse._();
  @$core.override
  TransformInvokeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransformInvokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformInvokeResponse>(create);
  static TransformInvokeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Struct get args => $_getN(0);
  @$pb.TagNumber(1)
  set args($4.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasArgs() => $_has(0);
  @$pb.TagNumber(1)
  void clearArgs() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.Struct ensureArgs() => $_ensure(0);

  @$pb.TagNumber(2)
  TransformInvokeOptions get options => $_getN(1);
  @$pb.TagNumber(2)
  set options(TransformInvokeOptions value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => $_clearField(2);
  @$pb.TagNumber(2)
  TransformInvokeOptions ensureOptions() => $_ensure(1);
}

/// TransformInvokeOptions is a subset of all invoke options that are relevant to transforms.
class TransformInvokeOptions extends $pb.GeneratedMessage {
  factory TransformInvokeOptions({
    $core.String? provider,
    $core.String? pluginDownloadUrl,
    $core.String? version,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        pluginChecksums,
  }) {
    final result = create();
    if (provider != null) result.provider = provider;
    if (pluginDownloadUrl != null) result.pluginDownloadUrl = pluginDownloadUrl;
    if (version != null) result.version = version;
    if (pluginChecksums != null)
      result.pluginChecksums.addEntries(pluginChecksums);
    return result;
  }

  TransformInvokeOptions._();

  factory TransformInvokeOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransformInvokeOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformInvokeOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'provider')
    ..aOS(2, _omitFieldNames ? '' : 'pluginDownloadUrl')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..m<$core.String, $core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'pluginChecksums',
        entryClassName: 'TransformInvokeOptions.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformInvokeOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformInvokeOptions copyWith(
          void Function(TransformInvokeOptions) updates) =>
      super.copyWith((message) => updates(message as TransformInvokeOptions))
          as TransformInvokeOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformInvokeOptions create() => TransformInvokeOptions._();
  @$core.override
  TransformInvokeOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransformInvokeOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformInvokeOptions>(create);
  static TransformInvokeOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get provider => $_getSZ(0);
  @$pb.TagNumber(1)
  set provider($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pluginDownloadUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set pluginDownloadUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPluginDownloadUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginDownloadUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(3);
}

/// ResourceHookRequest is the request object for resource hook callbacks in CallbackInvokeRequest.
class ResourceHookRequest extends $pb.GeneratedMessage {
  factory ResourceHookRequest({
    $core.String? urn,
    $core.String? id,
    $core.String? name,
    $core.String? type,
    $4.Struct? newInputs,
    $4.Struct? oldInputs,
    $4.Struct? newOutputs,
    $4.Struct? oldOutputs,
    ResourceOptions? oldOptions,
    ResourceOptions? newOptions,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (newInputs != null) result.newInputs = newInputs;
    if (oldInputs != null) result.oldInputs = oldInputs;
    if (newOutputs != null) result.newOutputs = newOutputs;
    if (oldOutputs != null) result.oldOutputs = oldOutputs;
    if (oldOptions != null) result.oldOptions = oldOptions;
    if (newOptions != null) result.newOptions = newOptions;
    return result;
  }

  ResourceHookRequest._();

  factory ResourceHookRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceHookRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceHookRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'type')
    ..aOM<$4.Struct>(5, _omitFieldNames ? '' : 'newInputs',
        subBuilder: $4.Struct.create)
    ..aOM<$4.Struct>(6, _omitFieldNames ? '' : 'oldInputs',
        subBuilder: $4.Struct.create)
    ..aOM<$4.Struct>(7, _omitFieldNames ? '' : 'newOutputs',
        subBuilder: $4.Struct.create)
    ..aOM<$4.Struct>(8, _omitFieldNames ? '' : 'oldOutputs',
        subBuilder: $4.Struct.create)
    ..aOM<ResourceOptions>(9, _omitFieldNames ? '' : 'oldOptions',
        subBuilder: ResourceOptions.create)
    ..aOM<ResourceOptions>(10, _omitFieldNames ? '' : 'newOptions',
        subBuilder: ResourceOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceHookRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceHookRequest copyWith(void Function(ResourceHookRequest) updates) =>
      super.copyWith((message) => updates(message as ResourceHookRequest))
          as ResourceHookRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceHookRequest create() => ResourceHookRequest._();
  @$core.override
  ResourceHookRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceHookRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceHookRequest>(create);
  static ResourceHookRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $4.Struct get newInputs => $_getN(4);
  @$pb.TagNumber(5)
  set newInputs($4.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasNewInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewInputs() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.Struct ensureNewInputs() => $_ensure(4);

  @$pb.TagNumber(6)
  $4.Struct get oldInputs => $_getN(5);
  @$pb.TagNumber(6)
  set oldInputs($4.Struct value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOldInputs() => $_has(5);
  @$pb.TagNumber(6)
  void clearOldInputs() => $_clearField(6);
  @$pb.TagNumber(6)
  $4.Struct ensureOldInputs() => $_ensure(5);

  @$pb.TagNumber(7)
  $4.Struct get newOutputs => $_getN(6);
  @$pb.TagNumber(7)
  set newOutputs($4.Struct value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasNewOutputs() => $_has(6);
  @$pb.TagNumber(7)
  void clearNewOutputs() => $_clearField(7);
  @$pb.TagNumber(7)
  $4.Struct ensureNewOutputs() => $_ensure(6);

  @$pb.TagNumber(8)
  $4.Struct get oldOutputs => $_getN(7);
  @$pb.TagNumber(8)
  set oldOutputs($4.Struct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasOldOutputs() => $_has(7);
  @$pb.TagNumber(8)
  void clearOldOutputs() => $_clearField(8);
  @$pb.TagNumber(8)
  $4.Struct ensureOldOutputs() => $_ensure(7);

  @$pb.TagNumber(9)
  ResourceOptions get oldOptions => $_getN(8);
  @$pb.TagNumber(9)
  set oldOptions(ResourceOptions value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasOldOptions() => $_has(8);
  @$pb.TagNumber(9)
  void clearOldOptions() => $_clearField(9);
  @$pb.TagNumber(9)
  ResourceOptions ensureOldOptions() => $_ensure(8);

  @$pb.TagNumber(10)
  ResourceOptions get newOptions => $_getN(9);
  @$pb.TagNumber(10)
  set newOptions(ResourceOptions value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasNewOptions() => $_has(9);
  @$pb.TagNumber(10)
  void clearNewOptions() => $_clearField(10);
  @$pb.TagNumber(10)
  ResourceOptions ensureNewOptions() => $_ensure(9);
}

/// ResourceHookResponse is the response object for resource hook callbacks in CallbackInvokeResponse.
class ResourceHookResponse extends $pb.GeneratedMessage {
  factory ResourceHookResponse({
    $core.String? error,
  }) {
    final result = create();
    if (error != null) result.error = error;
    return result;
  }

  ResourceHookResponse._();

  factory ResourceHookResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceHookResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceHookResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceHookResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceHookResponse copyWith(void Function(ResourceHookResponse) updates) =>
      super.copyWith((message) => updates(message as ResourceHookResponse))
          as ResourceHookResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceHookResponse create() => ResourceHookResponse._();
  @$core.override
  ResourceHookResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceHookResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceHookResponse>(create);
  static ResourceHookResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
}

/// ErrorHookRequest is the request object for error hook callbacks in CallbackInvokeRequest.
class ErrorHookRequest extends $pb.GeneratedMessage {
  factory ErrorHookRequest({
    $core.String? urn,
    $core.String? id,
    $core.String? name,
    $core.String? type,
    $4.Struct? newInputs,
    $4.Struct? oldInputs,
    $4.Struct? oldOutputs,
    $core.String? failedOperation,
    $core.Iterable<$core.String>? errors,
    ResourceOptions? oldOptions,
    ResourceOptions? newOptions,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (newInputs != null) result.newInputs = newInputs;
    if (oldInputs != null) result.oldInputs = oldInputs;
    if (oldOutputs != null) result.oldOutputs = oldOutputs;
    if (failedOperation != null) result.failedOperation = failedOperation;
    if (errors != null) result.errors.addAll(errors);
    if (oldOptions != null) result.oldOptions = oldOptions;
    if (newOptions != null) result.newOptions = newOptions;
    return result;
  }

  ErrorHookRequest._();

  factory ErrorHookRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ErrorHookRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ErrorHookRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'type')
    ..aOM<$4.Struct>(5, _omitFieldNames ? '' : 'newInputs',
        subBuilder: $4.Struct.create)
    ..aOM<$4.Struct>(6, _omitFieldNames ? '' : 'oldInputs',
        subBuilder: $4.Struct.create)
    ..aOM<$4.Struct>(7, _omitFieldNames ? '' : 'oldOutputs',
        subBuilder: $4.Struct.create)
    ..aOS(8, _omitFieldNames ? '' : 'failedOperation')
    ..pPS(9, _omitFieldNames ? '' : 'errors')
    ..aOM<ResourceOptions>(10, _omitFieldNames ? '' : 'oldOptions',
        subBuilder: ResourceOptions.create)
    ..aOM<ResourceOptions>(11, _omitFieldNames ? '' : 'newOptions',
        subBuilder: ResourceOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorHookRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorHookRequest copyWith(void Function(ErrorHookRequest) updates) =>
      super.copyWith((message) => updates(message as ErrorHookRequest))
          as ErrorHookRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorHookRequest create() => ErrorHookRequest._();
  @$core.override
  ErrorHookRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ErrorHookRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ErrorHookRequest>(create);
  static ErrorHookRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $4.Struct get newInputs => $_getN(4);
  @$pb.TagNumber(5)
  set newInputs($4.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasNewInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewInputs() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.Struct ensureNewInputs() => $_ensure(4);

  @$pb.TagNumber(6)
  $4.Struct get oldInputs => $_getN(5);
  @$pb.TagNumber(6)
  set oldInputs($4.Struct value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOldInputs() => $_has(5);
  @$pb.TagNumber(6)
  void clearOldInputs() => $_clearField(6);
  @$pb.TagNumber(6)
  $4.Struct ensureOldInputs() => $_ensure(5);

  @$pb.TagNumber(7)
  $4.Struct get oldOutputs => $_getN(6);
  @$pb.TagNumber(7)
  set oldOutputs($4.Struct value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasOldOutputs() => $_has(6);
  @$pb.TagNumber(7)
  void clearOldOutputs() => $_clearField(7);
  @$pb.TagNumber(7)
  $4.Struct ensureOldOutputs() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get failedOperation => $_getSZ(7);
  @$pb.TagNumber(8)
  set failedOperation($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFailedOperation() => $_has(7);
  @$pb.TagNumber(8)
  void clearFailedOperation() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get errors => $_getList(8);

  @$pb.TagNumber(10)
  ResourceOptions get oldOptions => $_getN(9);
  @$pb.TagNumber(10)
  set oldOptions(ResourceOptions value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasOldOptions() => $_has(9);
  @$pb.TagNumber(10)
  void clearOldOptions() => $_clearField(10);
  @$pb.TagNumber(10)
  ResourceOptions ensureOldOptions() => $_ensure(9);

  @$pb.TagNumber(11)
  ResourceOptions get newOptions => $_getN(10);
  @$pb.TagNumber(11)
  set newOptions(ResourceOptions value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasNewOptions() => $_has(10);
  @$pb.TagNumber(11)
  void clearNewOptions() => $_clearField(11);
  @$pb.TagNumber(11)
  ResourceOptions ensureNewOptions() => $_ensure(10);
}

/// ErrorHookResponse is the response object for error hook callbacks in CallbackInvokeResponse.
class ErrorHookResponse extends $pb.GeneratedMessage {
  factory ErrorHookResponse({
    $core.String? error,
    $core.bool? retry,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (retry != null) result.retry = retry;
    return result;
  }

  ErrorHookResponse._();

  factory ErrorHookResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ErrorHookResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ErrorHookResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..aOB(2, _omitFieldNames ? '' : 'retry')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorHookResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorHookResponse copyWith(void Function(ErrorHookResponse) updates) =>
      super.copyWith((message) => updates(message as ErrorHookResponse))
          as ErrorHookResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorHookResponse create() => ErrorHookResponse._();
  @$core.override
  ErrorHookResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ErrorHookResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ErrorHookResponse>(create);
  static ErrorHookResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get retry => $_getBF(1);
  @$pb.TagNumber(2)
  set retry($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRetry() => $_has(1);
  @$pb.TagNumber(2)
  void clearRetry() => $_clearField(2);
}

class RegisterPackageRequest extends $pb.GeneratedMessage {
  factory RegisterPackageRequest({
    $core.String? name,
    $core.String? version,
    $core.String? downloadUrl,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        checksums,
    Parameterization? parameterization,
    Parameterization? extension_6,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    if (downloadUrl != null) result.downloadUrl = downloadUrl;
    if (checksums != null) result.checksums.addEntries(checksums);
    if (parameterization != null) result.parameterization = parameterization;
    if (extension_6 != null) result.extension_6 = extension_6;
    return result;
  }

  RegisterPackageRequest._();

  factory RegisterPackageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterPackageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterPackageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'downloadUrl')
    ..m<$core.String, $core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'checksums',
        entryClassName: 'RegisterPackageRequest.ChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOM<Parameterization>(5, _omitFieldNames ? '' : 'parameterization',
        subBuilder: Parameterization.create)
    ..aOM<Parameterization>(6, _omitFieldNames ? '' : 'extension',
        subBuilder: Parameterization.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterPackageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterPackageRequest copyWith(
          void Function(RegisterPackageRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterPackageRequest))
          as RegisterPackageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterPackageRequest create() => RegisterPackageRequest._();
  @$core.override
  RegisterPackageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterPackageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterPackageRequest>(create);
  static RegisterPackageRequest? _defaultInstance;

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
  $core.String get downloadUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set downloadUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDownloadUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearDownloadUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.List<$core.int>> get checksums => $_getMap(3);

  @$pb.TagNumber(5)
  Parameterization get parameterization => $_getN(4);
  @$pb.TagNumber(5)
  set parameterization(Parameterization value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasParameterization() => $_has(4);
  @$pb.TagNumber(5)
  void clearParameterization() => $_clearField(5);
  @$pb.TagNumber(5)
  Parameterization ensureParameterization() => $_ensure(4);

  @$pb.TagNumber(6)
  Parameterization get extension_6 => $_getN(5);
  @$pb.TagNumber(6)
  set extension_6(Parameterization value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasExtension_6() => $_has(5);
  @$pb.TagNumber(6)
  void clearExtension_6() => $_clearField(6);
  @$pb.TagNumber(6)
  Parameterization ensureExtension_6() => $_ensure(5);
}

class RegisterPackageResponse extends $pb.GeneratedMessage {
  factory RegisterPackageResponse({
    $core.String? ref,
  }) {
    final result = create();
    if (ref != null) result.ref = ref;
    return result;
  }

  RegisterPackageResponse._();

  factory RegisterPackageResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterPackageResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterPackageResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterPackageResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterPackageResponse copyWith(
          void Function(RegisterPackageResponse) updates) =>
      super.copyWith((message) => updates(message as RegisterPackageResponse))
          as RegisterPackageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterPackageResponse create() => RegisterPackageResponse._();
  @$core.override
  RegisterPackageResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterPackageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterPackageResponse>(create);
  static RegisterPackageResponse? _defaultInstance;

  /// The UUID package reference for this registered package.
  ///
  /// Lifecycle methods accept this reference in the 'packageRef' field.
  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => $_clearField(1);
}

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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
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

class RegisterResourceHookRequest extends $pb.GeneratedMessage {
  factory RegisterResourceHookRequest({
    $core.String? name,
    $3.Callback? callback,
    $core.bool? onDryRun,
    $core.bool? ignoreErrors,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (callback != null) result.callback = callback;
    if (onDryRun != null) result.onDryRun = onDryRun;
    if (ignoreErrors != null) result.ignoreErrors = ignoreErrors;
    return result;
  }

  RegisterResourceHookRequest._();

  factory RegisterResourceHookRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResourceHookRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceHookRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$3.Callback>(2, _omitFieldNames ? '' : 'callback',
        subBuilder: $3.Callback.create)
    ..aOB(3, _omitFieldNames ? '' : 'onDryRun')
    ..aOB(4, _omitFieldNames ? '' : 'ignoreErrors')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceHookRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResourceHookRequest copyWith(
          void Function(RegisterResourceHookRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RegisterResourceHookRequest))
          as RegisterResourceHookRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceHookRequest create() =>
      RegisterResourceHookRequest._();
  @$core.override
  RegisterResourceHookRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceHookRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResourceHookRequest>(create);
  static RegisterResourceHookRequest? _defaultInstance;

  /// The name of the hook. Must be unique within a program, registering the
  /// same name twice is an error.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Callback get callback => $_getN(1);
  @$pb.TagNumber(2)
  set callback($3.Callback value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCallback() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallback() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Callback ensureCallback() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get onDryRun => $_getBF(2);
  @$pb.TagNumber(3)
  set onDryRun($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOnDryRun() => $_has(2);
  @$pb.TagNumber(3)
  void clearOnDryRun() => $_clearField(3);

  /// If true, errors from this hook are logged as warnings instead of failing the program.
  @$pb.TagNumber(4)
  $core.bool get ignoreErrors => $_getBF(3);
  @$pb.TagNumber(4)
  set ignoreErrors($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIgnoreErrors() => $_has(3);
  @$pb.TagNumber(4)
  void clearIgnoreErrors() => $_clearField(4);
}

class RegisterErrorHookRequest extends $pb.GeneratedMessage {
  factory RegisterErrorHookRequest({
    $core.String? name,
    $3.Callback? callback,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (callback != null) result.callback = callback;
    return result;
  }

  RegisterErrorHookRequest._();

  factory RegisterErrorHookRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterErrorHookRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterErrorHookRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$3.Callback>(2, _omitFieldNames ? '' : 'callback',
        subBuilder: $3.Callback.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterErrorHookRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterErrorHookRequest copyWith(
          void Function(RegisterErrorHookRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterErrorHookRequest))
          as RegisterErrorHookRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterErrorHookRequest create() => RegisterErrorHookRequest._();
  @$core.override
  RegisterErrorHookRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterErrorHookRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterErrorHookRequest>(create);
  static RegisterErrorHookRequest? _defaultInstance;

  /// The name of the hook. Must be unique within a program, registering the
  /// same name twice is an error.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Callback get callback => $_getN(1);
  @$pb.TagNumber(2)
  set callback($3.Callback value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCallback() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallback() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Callback ensureCallback() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
