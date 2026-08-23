// This is a generated file - do not edit.
//
// Generated from pulumi/plugin.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// PluginInfo is meta-information about a plugin that is used by the system.
class PluginInfo extends $pb.GeneratedMessage {
  factory PluginInfo({
    $core.String? version,
  }) {
    final result = create();
    if (version != null) result.version = version;
    return result;
  }

  PluginInfo._();

  factory PluginInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PluginInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PluginInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginInfo copyWith(void Function(PluginInfo) updates) =>
      super.copyWith((message) => updates(message as PluginInfo)) as PluginInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PluginInfo create() => PluginInfo._();
  @$core.override
  PluginInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PluginInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PluginInfo>(create);
  static PluginInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);
}

/// PluginDependency is information about a plugin that a program may depend upon.
class PluginDependency extends $pb.GeneratedMessage {
  factory PluginDependency({
    $core.String? name,
    $core.String? kind,
    $core.String? version,
    $core.String? server,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        checksums,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (kind != null) result.kind = kind;
    if (version != null) result.version = version;
    if (server != null) result.server = server;
    if (checksums != null) result.checksums.addEntries(checksums);
    return result;
  }

  PluginDependency._();

  factory PluginDependency.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PluginDependency.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PluginDependency',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aOS(4, _omitFieldNames ? '' : 'server')
    ..m<$core.String, $core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'checksums',
        entryClassName: 'PluginDependency.ChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginDependency clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginDependency copyWith(void Function(PluginDependency) updates) =>
      super.copyWith((message) => updates(message as PluginDependency))
          as PluginDependency;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PluginDependency create() => PluginDependency._();
  @$core.override
  PluginDependency createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PluginDependency getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PluginDependency>(create);
  static PluginDependency? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get server => $_getSZ(3);
  @$pb.TagNumber(4)
  set server($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasServer() => $_has(3);
  @$pb.TagNumber(4)
  void clearServer() => $_clearField(4);

  /// a map of the checksums for the plugin, will be empty from old language runtimes. The keys should match
  /// the os and architecture names used in pulumi releases, e.g. "darwin-amd64", "windows-arm64".
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.List<$core.int>> get checksums => $_getMap(4);
}

/// PluginAttach is used to attach an already running plugin to the engine.
///
/// Normally the engine starts the plugin process itself and passes the engine address as the first argumnent.
/// But when debugging it can be useful to have an already running provider that the engine instead attaches
/// to, this message is used so the provider can still be passed the engine address to communicate with.
class PluginAttach extends $pb.GeneratedMessage {
  factory PluginAttach({
    $core.String? address,
  }) {
    final result = create();
    if (address != null) result.address = address;
    return result;
  }

  PluginAttach._();

  factory PluginAttach.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PluginAttach.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PluginAttach',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginAttach clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginAttach copyWith(void Function(PluginAttach) updates) =>
      super.copyWith((message) => updates(message as PluginAttach))
          as PluginAttach;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PluginAttach create() => PluginAttach._();
  @$core.override
  PluginAttach createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PluginAttach getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PluginAttach>(create);
  static PluginAttach? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => $_clearField(1);
}

class PackageParameterization extends $pb.GeneratedMessage {
  factory PackageParameterization({
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

  PackageParameterization._();

  factory PackageParameterization.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageParameterization.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageParameterization',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageParameterization clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageParameterization copyWith(
          void Function(PackageParameterization) updates) =>
      super.copyWith((message) => updates(message as PackageParameterization))
          as PackageParameterization;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageParameterization create() => PackageParameterization._();
  @$core.override
  PackageParameterization createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageParameterization getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageParameterization>(create);
  static PackageParameterization? _defaultInstance;

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

/// PackageDependency is information about a package that a program may depend upon.
class PackageDependency extends $pb.GeneratedMessage {
  factory PackageDependency({
    $core.String? name,
    $core.String? kind,
    $core.String? version,
    $core.String? server,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        checksums,
    PackageParameterization? parameterization,
    PackageParameterization? extension_7,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (kind != null) result.kind = kind;
    if (version != null) result.version = version;
    if (server != null) result.server = server;
    if (checksums != null) result.checksums.addEntries(checksums);
    if (parameterization != null) result.parameterization = parameterization;
    if (extension_7 != null) result.extension_7 = extension_7;
    return result;
  }

  PackageDependency._();

  factory PackageDependency.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageDependency.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageDependency',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aOS(4, _omitFieldNames ? '' : 'server')
    ..m<$core.String, $core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'checksums',
        entryClassName: 'PackageDependency.ChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOM<PackageParameterization>(6, _omitFieldNames ? '' : 'parameterization',
        subBuilder: PackageParameterization.create)
    ..aOM<PackageParameterization>(7, _omitFieldNames ? '' : 'extension',
        subBuilder: PackageParameterization.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageDependency clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageDependency copyWith(void Function(PackageDependency) updates) =>
      super.copyWith((message) => updates(message as PackageDependency))
          as PackageDependency;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageDependency create() => PackageDependency._();
  @$core.override
  PackageDependency createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageDependency getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageDependency>(create);
  static PackageDependency? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get server => $_getSZ(3);
  @$pb.TagNumber(4)
  set server($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasServer() => $_has(3);
  @$pb.TagNumber(4)
  void clearServer() => $_clearField(4);

  /// a map of the checksums for the plugin, will be empty from old language runtimes. The keys should match
  /// the os and architecture names used in pulumi releases, e.g. "darwin-amd64", "windows-arm64".
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.List<$core.int>> get checksums => $_getMap(4);

  /// The optional replacement parameterization for this package.
  @$pb.TagNumber(6)
  PackageParameterization get parameterization => $_getN(5);
  @$pb.TagNumber(6)
  set parameterization(PackageParameterization value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasParameterization() => $_has(5);
  @$pb.TagNumber(6)
  void clearParameterization() => $_clearField(6);
  @$pb.TagNumber(6)
  PackageParameterization ensureParameterization() => $_ensure(5);

  /// The optional extension parameterization for this package.
  @$pb.TagNumber(7)
  PackageParameterization get extension_7 => $_getN(6);
  @$pb.TagNumber(7)
  set extension_7(PackageParameterization value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExtension_7() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtension_7() => $_clearField(7);
  @$pb.TagNumber(7)
  PackageParameterization ensureExtension_7() => $_ensure(6);
}

class PackageSpec extends $pb.GeneratedMessage {
  factory PackageSpec({
    $core.String? source,
    $core.String? version,
    $core.Iterable<$core.String>? parameters,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        checksums,
    $core.String? server,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (version != null) result.version = version;
    if (parameters != null) result.parameters.addAll(parameters);
    if (checksums != null) result.checksums.addEntries(checksums);
    if (server != null) result.server = server;
    return result;
  }

  PackageSpec._();

  factory PackageSpec.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackageSpec.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackageSpec',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'source')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..pPS(3, _omitFieldNames ? '' : 'parameters')
    ..m<$core.String, $core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'checksums',
        entryClassName: 'PackageSpec.ChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(5, _omitFieldNames ? '' : 'server')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageSpec clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackageSpec copyWith(void Function(PackageSpec) updates) =>
      super.copyWith((message) => updates(message as PackageSpec))
          as PackageSpec;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageSpec create() => PackageSpec._();
  @$core.override
  PackageSpec createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackageSpec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackageSpec>(create);
  static PackageSpec? _defaultInstance;

  /// The "name" of the plugin.
  ///
  /// Source may be one of:
  /// - A simple name, like "pkg"
  /// - A registry double or triple: "org/pkg", "source/org/pkg"
  /// - A git URL, "git://github.com/pulumi/pulumi-example/path"
  /// - An un-prefixed URL, like github.com/pulumi/pulumi-example/path
  /// - A local path, like /usr/bin/pkg
  @$pb.TagNumber(1)
  $core.String get source => $_getSZ(0);
  @$pb.TagNumber(1)
  set source($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);

  /// The version of the provider, may be Semver 2.0 or a git hash.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  /// Any parameters needed to configure the package.
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get parameters => $_getList(2);

  /// if set will be used to validate the plugin downloaded matches. This is keyed by
  /// "$os-$arch", e.g. "linux-x64".
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.List<$core.int>> get checksums => $_getMap(3);

  @$pb.TagNumber(5)
  $core.String get server => $_getSZ(4);
  @$pb.TagNumber(5)
  set server($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasServer() => $_has(4);
  @$pb.TagNumber(5)
  void clearServer() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
