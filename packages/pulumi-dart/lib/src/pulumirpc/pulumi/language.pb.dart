// This is a generated file - do not edit.
//
// Generated from pulumi/language.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $3;

import 'codegen/hcl.pb.dart' as $4;
import 'language.pbenum.dart';
import 'plugin.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'language.pbenum.dart';

/// A `ProgramInfo` struct specifies a Pulumi program, and is built typically based on the location of a `Pulumi.yaml`
/// file and the `runtime`, `main` and other properties within that file.
class ProgramInfo extends $pb.GeneratedMessage {
  factory ProgramInfo({
    $core.String? rootDirectory,
    $core.String? programDirectory,
    $core.String? entryPoint,
    $3.Struct? options,
  }) {
    final result = create();
    if (rootDirectory != null) result.rootDirectory = rootDirectory;
    if (programDirectory != null) result.programDirectory = programDirectory;
    if (entryPoint != null) result.entryPoint = entryPoint;
    if (options != null) result.options = options;
    return result;
  }

  ProgramInfo._();

  factory ProgramInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProgramInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProgramInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rootDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'programDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'entryPoint')
    ..aOM<$3.Struct>(4, _omitFieldNames ? '' : 'options',
        subBuilder: $3.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProgramInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProgramInfo copyWith(void Function(ProgramInfo) updates) =>
      super.copyWith((message) => updates(message as ProgramInfo))
          as ProgramInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProgramInfo create() => ProgramInfo._();
  @$core.override
  ProgramInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProgramInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProgramInfo>(create);
  static ProgramInfo? _defaultInstance;

  /// The root of the project containing the program, where the `Pulumi.yaml` file is located. This should be an
  /// absolute path on the filesystem that is accessible to the language host.
  @$pb.TagNumber(1)
  $core.String get rootDirectory => $_getSZ(0);
  @$pb.TagNumber(1)
  set rootDirectory($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRootDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootDirectory() => $_clearField(1);

  /// The directory containing the program to execute (e.g. the location of the `index.ts` for a TypeScript NodeJS
  /// program). This should be an absolute path on the filesystem that is accessible to the language host. If
  /// `ProgramInfo` is being built from a `Pulumi.yaml`, this will typically be the directory portion of the `main`
  /// property in that file.
  @$pb.TagNumber(2)
  $core.String get programDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set programDirectory($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProgramDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgramDirectory() => $_clearField(2);

  /// The entry point of the program to execute. This should be a relative path from the `program_directory`, and is
  /// often just `.` to indicate the program directory itself, but it can also be a filename inside the directory.. If
  /// `ProgramInfo` is being built from a `Pulumi.yaml`, this will typically be the filename specified `main` property
  /// in that file if it is present, or the aforementioned `.` if not.
  @$pb.TagNumber(3)
  $core.String get entryPoint => $_getSZ(2);
  @$pb.TagNumber(3)
  set entryPoint($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEntryPoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntryPoint() => $_clearField(3);

  /// A struct capturing any language-specific options. If `ProgramInfo` is being built from a `Pulumi.yaml`, this will
  /// contain the `runtime.options` property from that file.
  @$pb.TagNumber(4)
  $3.Struct get options => $_getN(3);
  @$pb.TagNumber(4)
  set options($3.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptions() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Struct ensureOptions() => $_ensure(3);
}

/// `AboutRequest` is the type of requests sent as part of an [](pulumirpc.LanguageRuntime.About) call.
class AboutRequest extends $pb.GeneratedMessage {
  factory AboutRequest({
    ProgramInfo? info,
  }) {
    final result = create();
    if (info != null) result.info = info;
    return result;
  }

  AboutRequest._();

  factory AboutRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AboutRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AboutRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<ProgramInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AboutRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AboutRequest copyWith(void Function(AboutRequest) updates) =>
      super.copyWith((message) => updates(message as AboutRequest))
          as AboutRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AboutRequest create() => AboutRequest._();
  @$core.override
  AboutRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AboutRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AboutRequest>(create);
  static AboutRequest? _defaultInstance;

  /// The program to use.
  @$pb.TagNumber(1)
  ProgramInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ProgramInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  ProgramInfo ensureInfo() => $_ensure(0);
}

/// `AboutResponse` is the type of responses sent by an [](pulumirpc.LanguageRuntime.About) call. It contains information
/// about the language runtime being used.
class AboutResponse extends $pb.GeneratedMessage {
  factory AboutResponse({
    $core.String? executable,
    $core.String? version,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? metadata,
  }) {
    final result = create();
    if (executable != null) result.executable = executable;
    if (version != null) result.version = version;
    if (metadata != null) result.metadata.addEntries(metadata);
    return result;
  }

  AboutResponse._();

  factory AboutResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AboutResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AboutResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'executable')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'AboutResponse.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AboutResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AboutResponse copyWith(void Function(AboutResponse) updates) =>
      super.copyWith((message) => updates(message as AboutResponse))
          as AboutResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AboutResponse create() => AboutResponse._();
  @$core.override
  AboutResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AboutResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AboutResponse>(create);
  static AboutResponse? _defaultInstance;

  /// The primary executable for the runtime of this language. This should be an absolute path. E.g. for NodeJS on a
  /// POSIX system, this might be something like `/usr/bin/node`.
  @$pb.TagNumber(1)
  $core.String get executable => $_getSZ(0);
  @$pb.TagNumber(1)
  set executable($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExecutable() => $_has(0);
  @$pb.TagNumber(1)
  void clearExecutable() => $_clearField(1);

  /// The version of the runtime underpinning the language host. E.g. for a NodeJS host, this might be the version of
  /// `node` being used.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  /// Other host-specific metadata about the runtime underpinning the language host.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get metadata => $_getMap(2);
}

/// `GetProgramDependenciesRequest` is the type of requests sent as part of a
/// [](pulumirpc.LanguageRuntime.GetProgramDependencies) call.
class GetProgramDependenciesRequest extends $pb.GeneratedMessage {
  factory GetProgramDependenciesRequest({
    @$core.Deprecated('This field is deprecated.') $core.String? project,
    @$core.Deprecated('This field is deprecated.') $core.String? pwd,
    @$core.Deprecated('This field is deprecated.') $core.String? program,
    $core.bool? transitiveDependencies,
    ProgramInfo? info,
  }) {
    final result = create();
    if (project != null) result.project = project;
    if (pwd != null) result.pwd = pwd;
    if (program != null) result.program = program;
    if (transitiveDependencies != null)
      result.transitiveDependencies = transitiveDependencies;
    if (info != null) result.info = info;
    return result;
  }

  GetProgramDependenciesRequest._();

  factory GetProgramDependenciesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetProgramDependenciesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetProgramDependenciesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'pwd')
    ..aOS(3, _omitFieldNames ? '' : 'program')
    ..aOB(4, _omitFieldNames ? '' : 'transitiveDependencies',
        protoName: 'transitiveDependencies')
    ..aOM<ProgramInfo>(5, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetProgramDependenciesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetProgramDependenciesRequest copyWith(
          void Function(GetProgramDependenciesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetProgramDependenciesRequest))
          as GetProgramDependenciesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProgramDependenciesRequest create() =>
      GetProgramDependenciesRequest._();
  @$core.override
  GetProgramDependenciesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetProgramDependenciesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetProgramDependenciesRequest>(create);
  static GetProgramDependenciesRequest? _defaultInstance;

  /// The project name.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field. Newer
  /// versions of the engine will always set this field to the string `"deprecated"`.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get project => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set project($core.String value) => $_setString(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasProject() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearProject() => $_clearField(1);

  /// The program's working directory.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field, with
  /// the `program_directory` field set to this value.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get pwd => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set pwd($core.String value) => $_setString(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasPwd() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearPwd() => $_clearField(2);

  /// The path to the program.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field, with
  /// the `entry_point` field set to this value.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get program => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set program($core.String value) => $_setString(2, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasProgram() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearProgram() => $_clearField(3);

  /// True if transitive dependencies should be included in the response.
  @$pb.TagNumber(4)
  $core.bool get transitiveDependencies => $_getBF(3);
  @$pb.TagNumber(4)
  set transitiveDependencies($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTransitiveDependencies() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransitiveDependencies() => $_clearField(4);

  /// The program to use.
  @$pb.TagNumber(5)
  ProgramInfo get info => $_getN(4);
  @$pb.TagNumber(5)
  set info(ProgramInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  ProgramInfo ensureInfo() => $_ensure(4);
}

/// `DependencyInfo` is a struct that captures information about a language-specific dependency required by a program
/// (e.g. an NPM package for NodeJS, or a Maven library for Java). It is returned as part of a
/// [](pulumirpc.LanguageRuntime.GetProgramDependenciesResponse).
class DependencyInfo extends $pb.GeneratedMessage {
  factory DependencyInfo({
    $core.String? name,
    $core.String? version,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    return result;
  }

  DependencyInfo._();

  factory DependencyInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DependencyInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DependencyInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DependencyInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DependencyInfo copyWith(void Function(DependencyInfo) updates) =>
      super.copyWith((message) => updates(message as DependencyInfo))
          as DependencyInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DependencyInfo create() => DependencyInfo._();
  @$core.override
  DependencyInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DependencyInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DependencyInfo>(create);
  static DependencyInfo? _defaultInstance;

  /// The name of the dependency.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// The version of the dependency.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
}

/// `GetProgramDependenciesResponse` is the type of responses sent by a
/// [](pulumirpc.LanguageRuntime.GetProgramDependencies) call. It contains information about the dependencies of a
/// program.
class GetProgramDependenciesResponse extends $pb.GeneratedMessage {
  factory GetProgramDependenciesResponse({
    $core.Iterable<DependencyInfo>? dependencies,
  }) {
    final result = create();
    if (dependencies != null) result.dependencies.addAll(dependencies);
    return result;
  }

  GetProgramDependenciesResponse._();

  factory GetProgramDependenciesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetProgramDependenciesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetProgramDependenciesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<DependencyInfo>(1, _omitFieldNames ? '' : 'dependencies',
        subBuilder: DependencyInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetProgramDependenciesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetProgramDependenciesResponse copyWith(
          void Function(GetProgramDependenciesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetProgramDependenciesResponse))
          as GetProgramDependenciesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProgramDependenciesResponse create() =>
      GetProgramDependenciesResponse._();
  @$core.override
  GetProgramDependenciesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetProgramDependenciesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetProgramDependenciesResponse>(create);
  static GetProgramDependenciesResponse? _defaultInstance;

  /// The dependencies of the program specified by the request.
  @$pb.TagNumber(1)
  $pb.PbList<DependencyInfo> get dependencies => $_getList(0);
}

/// `GetRequiredPluginsRequest` is the type of requests sent as part of a
/// [](pulumirpc.LanguageRuntime.GetRequiredPlugins) call.
class GetRequiredPluginsRequest extends $pb.GeneratedMessage {
  factory GetRequiredPluginsRequest({
    @$core.Deprecated('This field is deprecated.') $core.String? project,
    @$core.Deprecated('This field is deprecated.') $core.String? pwd,
    @$core.Deprecated('This field is deprecated.') $core.String? program,
    ProgramInfo? info,
  }) {
    final result = create();
    if (project != null) result.project = project;
    if (pwd != null) result.pwd = pwd;
    if (program != null) result.program = program;
    if (info != null) result.info = info;
    return result;
  }

  GetRequiredPluginsRequest._();

  factory GetRequiredPluginsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetRequiredPluginsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRequiredPluginsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'pwd')
    ..aOS(3, _omitFieldNames ? '' : 'program')
    ..aOM<ProgramInfo>(4, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequiredPluginsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequiredPluginsRequest copyWith(
          void Function(GetRequiredPluginsRequest) updates) =>
      super.copyWith((message) => updates(message as GetRequiredPluginsRequest))
          as GetRequiredPluginsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequiredPluginsRequest create() => GetRequiredPluginsRequest._();
  @$core.override
  GetRequiredPluginsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetRequiredPluginsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRequiredPluginsRequest>(create);
  static GetRequiredPluginsRequest? _defaultInstance;

  /// The project name.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field. Newer
  /// versions of the engine will always set this field to the string `"deprecated"`.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get project => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set project($core.String value) => $_setString(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasProject() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearProject() => $_clearField(1);

  /// The program's working directory.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field, with
  /// the `program_directory` field set to this value.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get pwd => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set pwd($core.String value) => $_setString(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasPwd() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearPwd() => $_clearField(2);

  /// The path to the program.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field, with
  /// the `entry_point` field set to this value.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get program => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set program($core.String value) => $_setString(2, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasProgram() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearProgram() => $_clearField(3);

  /// The program to use.
  @$pb.TagNumber(4)
  ProgramInfo get info => $_getN(3);
  @$pb.TagNumber(4)
  set info(ProgramInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  ProgramInfo ensureInfo() => $_ensure(3);
}

/// `GetRequiredPluginsResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.GetRequiredPlugins)
/// call. It contains information about the plugins required by a program.
class GetRequiredPluginsResponse extends $pb.GeneratedMessage {
  factory GetRequiredPluginsResponse({
    $core.Iterable<$2.PluginDependency>? plugins,
  }) {
    final result = create();
    if (plugins != null) result.plugins.addAll(plugins);
    return result;
  }

  GetRequiredPluginsResponse._();

  factory GetRequiredPluginsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetRequiredPluginsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRequiredPluginsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<$2.PluginDependency>(1, _omitFieldNames ? '' : 'plugins',
        subBuilder: $2.PluginDependency.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequiredPluginsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequiredPluginsResponse copyWith(
          void Function(GetRequiredPluginsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetRequiredPluginsResponse))
          as GetRequiredPluginsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequiredPluginsResponse create() => GetRequiredPluginsResponse._();
  @$core.override
  GetRequiredPluginsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetRequiredPluginsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRequiredPluginsResponse>(create);
  static GetRequiredPluginsResponse? _defaultInstance;

  /// The plugins required by the program specified by the request.
  @$pb.TagNumber(1)
  $pb.PbList<$2.PluginDependency> get plugins => $_getList(0);
}

/// `GetRequiredPackagesRequest` is the type of requests sent as part of a
/// [](pulumirpc.LanguageRuntime.GetRequiredPackages) call.
class GetRequiredPackagesRequest extends $pb.GeneratedMessage {
  factory GetRequiredPackagesRequest({
    ProgramInfo? info,
  }) {
    final result = create();
    if (info != null) result.info = info;
    return result;
  }

  GetRequiredPackagesRequest._();

  factory GetRequiredPackagesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetRequiredPackagesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRequiredPackagesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<ProgramInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequiredPackagesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequiredPackagesRequest copyWith(
          void Function(GetRequiredPackagesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetRequiredPackagesRequest))
          as GetRequiredPackagesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequiredPackagesRequest create() => GetRequiredPackagesRequest._();
  @$core.override
  GetRequiredPackagesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetRequiredPackagesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRequiredPackagesRequest>(create);
  static GetRequiredPackagesRequest? _defaultInstance;

  /// The program to use.
  @$pb.TagNumber(1)
  ProgramInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ProgramInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  ProgramInfo ensureInfo() => $_ensure(0);
}

/// `GetRequiredPackagesResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.GetRequiredPackages)
/// call. It contains information about the packages required by a program.
class GetRequiredPackagesResponse extends $pb.GeneratedMessage {
  factory GetRequiredPackagesResponse({
    $core.Iterable<$2.PackageDependency>? packages,
  }) {
    final result = create();
    if (packages != null) result.packages.addAll(packages);
    return result;
  }

  GetRequiredPackagesResponse._();

  factory GetRequiredPackagesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetRequiredPackagesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRequiredPackagesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<$2.PackageDependency>(1, _omitFieldNames ? '' : 'packages',
        subBuilder: $2.PackageDependency.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequiredPackagesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRequiredPackagesResponse copyWith(
          void Function(GetRequiredPackagesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetRequiredPackagesResponse))
          as GetRequiredPackagesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequiredPackagesResponse create() =>
      GetRequiredPackagesResponse._();
  @$core.override
  GetRequiredPackagesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetRequiredPackagesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRequiredPackagesResponse>(create);
  static GetRequiredPackagesResponse? _defaultInstance;

  /// The packages required by the program specified by the request.
  @$pb.TagNumber(1)
  $pb.PbList<$2.PackageDependency> get packages => $_getList(0);
}

/// `RunRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.Run) call.
class RunRequest extends $pb.GeneratedMessage {
  factory RunRequest({
    $core.String? project,
    $core.String? stack,
    $core.String? pwd,
    @$core.Deprecated('This field is deprecated.') $core.String? program,
    $core.Iterable<$core.String>? args,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? config,
    $core.bool? dryRun,
    $core.int? parallel,
    $core.String? monitorAddress,
    @$core.Deprecated('This field is deprecated.') $core.bool? queryMode,
    $core.Iterable<$core.String>? configSecretKeys,
    $core.String? organization,
    @$core.Deprecated('This field is deprecated.') $3.Struct? configPropertyMap,
    ProgramInfo? info,
    $core.String? loaderTarget,
    $core.bool? attachDebugger,
  }) {
    final result = create();
    if (project != null) result.project = project;
    if (stack != null) result.stack = stack;
    if (pwd != null) result.pwd = pwd;
    if (program != null) result.program = program;
    if (args != null) result.args.addAll(args);
    if (config != null) result.config.addEntries(config);
    if (dryRun != null) result.dryRun = dryRun;
    if (parallel != null) result.parallel = parallel;
    if (monitorAddress != null) result.monitorAddress = monitorAddress;
    if (queryMode != null) result.queryMode = queryMode;
    if (configSecretKeys != null)
      result.configSecretKeys.addAll(configSecretKeys);
    if (organization != null) result.organization = organization;
    if (configPropertyMap != null) result.configPropertyMap = configPropertyMap;
    if (info != null) result.info = info;
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    if (attachDebugger != null) result.attachDebugger = attachDebugger;
    return result;
  }

  RunRequest._();

  factory RunRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'stack')
    ..aOS(3, _omitFieldNames ? '' : 'pwd')
    ..aOS(4, _omitFieldNames ? '' : 'program')
    ..pPS(5, _omitFieldNames ? '' : 'args')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'config',
        entryClassName: 'RunRequest.ConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(7, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aI(8, _omitFieldNames ? '' : 'parallel')
    ..aOS(9, _omitFieldNames ? '' : 'monitorAddress')
    ..aOB(10, _omitFieldNames ? '' : 'queryMode', protoName: 'queryMode')
    ..pPS(11, _omitFieldNames ? '' : 'configSecretKeys',
        protoName: 'configSecretKeys')
    ..aOS(12, _omitFieldNames ? '' : 'organization')
    ..aOM<$3.Struct>(13, _omitFieldNames ? '' : 'configPropertyMap',
        protoName: 'configPropertyMap', subBuilder: $3.Struct.create)
    ..aOM<ProgramInfo>(14, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..aOS(15, _omitFieldNames ? '' : 'loaderTarget')
    ..aOB(16, _omitFieldNames ? '' : 'attachDebugger')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunRequest copyWith(void Function(RunRequest) updates) =>
      super.copyWith((message) => updates(message as RunRequest)) as RunRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunRequest create() => RunRequest._();
  @$core.override
  RunRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunRequest>(create);
  static RunRequest? _defaultInstance;

  /// The project name.
  @$pb.TagNumber(1)
  $core.String get project => $_getSZ(0);
  @$pb.TagNumber(1)
  set project($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProject() => $_has(0);
  @$pb.TagNumber(1)
  void clearProject() => $_clearField(1);

  /// The name of the stack being deployed into.
  @$pb.TagNumber(2)
  $core.String get stack => $_getSZ(1);
  @$pb.TagNumber(2)
  set stack($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStack() => $_has(1);
  @$pb.TagNumber(2)
  void clearStack() => $_clearField(2);

  /// The program's working directory.
  @$pb.TagNumber(3)
  $core.String get pwd => $_getSZ(2);
  @$pb.TagNumber(3)
  set pwd($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPwd() => $_has(2);
  @$pb.TagNumber(3)
  void clearPwd() => $_clearField(3);

  /// The path to the program.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field, with
  /// the `entry_point` field set to this value.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.String get program => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set program($core.String value) => $_setString(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasProgram() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearProgram() => $_clearField(4);

  /// Any arguments to pass to the program.
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get args => $_getList(4);

  /// Configuration variables to apply before running the program.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get config => $_getMap(5);

  /// True if we are only doing a dry run (preview).
  @$pb.TagNumber(7)
  $core.bool get dryRun => $_getBF(6);
  @$pb.TagNumber(7)
  set dryRun($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDryRun() => $_has(6);
  @$pb.TagNumber(7)
  void clearDryRun() => $_clearField(7);

  /// The degree of parallelism that should be used for resource operations. A value less than or equal to 1 indicates
  /// serial execution.
  @$pb.TagNumber(8)
  $core.int get parallel => $_getIZ(7);
  @$pb.TagNumber(8)
  set parallel($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasParallel() => $_has(7);
  @$pb.TagNumber(8)
  void clearParallel() => $_clearField(8);

  /// The address of the [](pulumirpc.ResourceMonitor) that the program should connect to send [resource
  /// registrations](resource-registration) and other calls to.
  @$pb.TagNumber(9)
  $core.String get monitorAddress => $_getSZ(8);
  @$pb.TagNumber(9)
  set monitorAddress($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMonitorAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearMonitorAddress() => $_clearField(9);

  /// This is deprecated, query mode is no longer a supported feature.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool get queryMode => $_getBF(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set queryMode($core.bool value) => $_setBool(9, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasQueryMode() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearQueryMode() => $_clearField(10);

  /// A list of configuration keys whose values should be treated as secrets.
  @$pb.TagNumber(11)
  $pb.PbList<$core.String> get configSecretKeys => $_getList(10);

  /// The organization of the stack being deployed into.
  @$pb.TagNumber(12)
  $core.String get organization => $_getSZ(11);
  @$pb.TagNumber(12)
  set organization($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasOrganization() => $_has(11);
  @$pb.TagNumber(12)
  void clearOrganization() => $_clearField(12);

  /// This is deprecated, runtimes should look at the string based config as that maintains the full textual data from
  /// the users config file.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $3.Struct get configPropertyMap => $_getN(12);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  set configPropertyMap($3.Struct value) => $_setField(13, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $core.bool hasConfigPropertyMap() => $_has(12);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  void clearConfigPropertyMap() => $_clearField(13);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $3.Struct ensureConfigPropertyMap() => $_ensure(12);

  /// The program to use.
  @$pb.TagNumber(14)
  ProgramInfo get info => $_getN(13);
  @$pb.TagNumber(14)
  set info(ProgramInfo value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasInfo() => $_has(13);
  @$pb.TagNumber(14)
  void clearInfo() => $_clearField(14);
  @$pb.TagNumber(14)
  ProgramInfo ensureInfo() => $_ensure(13);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(15)
  $core.String get loaderTarget => $_getSZ(14);
  @$pb.TagNumber(15)
  set loaderTarget($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLoaderTarget() => $_has(14);
  @$pb.TagNumber(15)
  void clearLoaderTarget() => $_clearField(15);

  /// True if and only if the host should start the program under a debugger.
  @$pb.TagNumber(16)
  $core.bool get attachDebugger => $_getBF(15);
  @$pb.TagNumber(16)
  set attachDebugger($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(16)
  $core.bool hasAttachDebugger() => $_has(15);
  @$pb.TagNumber(16)
  void clearAttachDebugger() => $_clearField(16);
}

/// `RunResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.Run) call.
class RunResponse extends $pb.GeneratedMessage {
  factory RunResponse({
    $core.String? error,
    $core.bool? bail,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (bail != null) result.bail = bail;
    return result;
  }

  RunResponse._();

  factory RunResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..aOB(2, _omitFieldNames ? '' : 'bail')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunResponse copyWith(void Function(RunResponse) updates) =>
      super.copyWith((message) => updates(message as RunResponse))
          as RunResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunResponse create() => RunResponse._();
  @$core.override
  RunResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunResponse>(create);
  static RunResponse? _defaultInstance;

  /// Information about any unhandled error that occurred during the run.
  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);

  /// True if an error happened, but it was reported to the user. Work should halt immediately, reporting nothing
  /// further to the user (since this reporting has already happened). This corresponds to a `result.Bail()` value
  /// being raised in the Go application layer.
  @$pb.TagNumber(2)
  $core.bool get bail => $_getBF(1);
  @$pb.TagNumber(2)
  set bail($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBail() => $_has(1);
  @$pb.TagNumber(2)
  void clearBail() => $_clearField(2);
}

/// `InstallDependenciesRequest` is the type of requests sent as part of an
/// [](pulumirpc.LanguageRuntime.InstallDependencies) call.
class InstallDependenciesRequest extends $pb.GeneratedMessage {
  factory InstallDependenciesRequest({
    @$core.Deprecated('This field is deprecated.') $core.String? directory,
    $core.bool? isTerminal,
    ProgramInfo? info,
    $core.bool? useLanguageVersionTools,
    $core.bool? isPlugin,
  }) {
    final result = create();
    if (directory != null) result.directory = directory;
    if (isTerminal != null) result.isTerminal = isTerminal;
    if (info != null) result.info = info;
    if (useLanguageVersionTools != null)
      result.useLanguageVersionTools = useLanguageVersionTools;
    if (isPlugin != null) result.isPlugin = isPlugin;
    return result;
  }

  InstallDependenciesRequest._();

  factory InstallDependenciesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InstallDependenciesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InstallDependenciesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'directory')
    ..aOB(2, _omitFieldNames ? '' : 'isTerminal')
    ..aOM<ProgramInfo>(3, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..aOB(4, _omitFieldNames ? '' : 'useLanguageVersionTools')
    ..aOB(5, _omitFieldNames ? '' : 'isPlugin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstallDependenciesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstallDependenciesRequest copyWith(
          void Function(InstallDependenciesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as InstallDependenciesRequest))
          as InstallDependenciesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallDependenciesRequest create() => InstallDependenciesRequest._();
  @$core.override
  InstallDependenciesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InstallDependenciesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InstallDependenciesRequest>(create);
  static InstallDependenciesRequest? _defaultInstance;

  /// The program's working directory.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field, with
  /// the `program_directory` field set to this value.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get directory => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set directory($core.String value) => $_setString(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasDirectory() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearDirectory() => $_clearField(1);

  /// True if we are running in a terminal and may use [ANSI escape
  /// codes](https://en.wikipedia.org/wiki/ANSI_escape_code) in our output.
  @$pb.TagNumber(2)
  $core.bool get isTerminal => $_getBF(1);
  @$pb.TagNumber(2)
  set isTerminal($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsTerminal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsTerminal() => $_clearField(2);

  /// The program to use.
  @$pb.TagNumber(3)
  ProgramInfo get info => $_getN(2);
  @$pb.TagNumber(3)
  set info(ProgramInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  ProgramInfo ensureInfo() => $_ensure(2);

  /// True if the host should use language-specific version managers, such as `pyenv` or `nvm`, to set up the version
  /// of the language toolchain used.
  @$pb.TagNumber(4)
  $core.bool get useLanguageVersionTools => $_getBF(3);
  @$pb.TagNumber(4)
  set useLanguageVersionTools($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUseLanguageVersionTools() => $_has(3);
  @$pb.TagNumber(4)
  void clearUseLanguageVersionTools() => $_clearField(4);

  /// True if this install is for a plugin, as opposed to a top level Pulumi program.
  @$pb.TagNumber(5)
  $core.bool get isPlugin => $_getBF(4);
  @$pb.TagNumber(5)
  set isPlugin($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsPlugin() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsPlugin() => $_clearField(5);
}

/// `InstallDependenciesResponse` is the type of responses streamed by an
/// [](pulumirpc.LanguageRuntime.InstallDependencies) call.
class InstallDependenciesResponse extends $pb.GeneratedMessage {
  factory InstallDependenciesResponse({
    $core.List<$core.int>? stdout,
    $core.List<$core.int>? stderr,
  }) {
    final result = create();
    if (stdout != null) result.stdout = stdout;
    if (stderr != null) result.stderr = stderr;
    return result;
  }

  InstallDependenciesResponse._();

  factory InstallDependenciesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InstallDependenciesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InstallDependenciesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'stdout', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'stderr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstallDependenciesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstallDependenciesResponse copyWith(
          void Function(InstallDependenciesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as InstallDependenciesResponse))
          as InstallDependenciesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallDependenciesResponse create() =>
      InstallDependenciesResponse._();
  @$core.override
  InstallDependenciesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InstallDependenciesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InstallDependenciesResponse>(create);
  static InstallDependenciesResponse? _defaultInstance;

  /// A line of standard output.
  @$pb.TagNumber(1)
  $core.List<$core.int> get stdout => $_getN(0);
  @$pb.TagNumber(1)
  set stdout($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStdout() => $_has(0);
  @$pb.TagNumber(1)
  void clearStdout() => $_clearField(1);

  /// A line of standard error.
  @$pb.TagNumber(2)
  $core.List<$core.int> get stderr => $_getN(1);
  @$pb.TagNumber(2)
  set stderr($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStderr() => $_has(1);
  @$pb.TagNumber(2)
  void clearStderr() => $_clearField(2);
}

/// `RuntimeOptionsRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.RuntimeOptionsPrompts)
/// call.
class RuntimeOptionsRequest extends $pb.GeneratedMessage {
  factory RuntimeOptionsRequest({
    ProgramInfo? info,
  }) {
    final result = create();
    if (info != null) result.info = info;
    return result;
  }

  RuntimeOptionsRequest._();

  factory RuntimeOptionsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RuntimeOptionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RuntimeOptionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<ProgramInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RuntimeOptionsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RuntimeOptionsRequest copyWith(
          void Function(RuntimeOptionsRequest) updates) =>
      super.copyWith((message) => updates(message as RuntimeOptionsRequest))
          as RuntimeOptionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeOptionsRequest create() => RuntimeOptionsRequest._();
  @$core.override
  RuntimeOptionsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RuntimeOptionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RuntimeOptionsRequest>(create);
  static RuntimeOptionsRequest? _defaultInstance;

  /// The program to use.
  @$pb.TagNumber(1)
  ProgramInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ProgramInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  ProgramInfo ensureInfo() => $_ensure(0);
}

/// `RuntimeOptionValue` is a struct that captures the value of a runtime option.
class RuntimeOptionPrompt_RuntimeOptionValue extends $pb.GeneratedMessage {
  factory RuntimeOptionPrompt_RuntimeOptionValue({
    RuntimeOptionPrompt_RuntimeOptionType? promptType,
    $core.String? stringValue,
    $core.int? int32Value,
    $core.String? displayName,
  }) {
    final result = create();
    if (promptType != null) result.promptType = promptType;
    if (stringValue != null) result.stringValue = stringValue;
    if (int32Value != null) result.int32Value = int32Value;
    if (displayName != null) result.displayName = displayName;
    return result;
  }

  RuntimeOptionPrompt_RuntimeOptionValue._();

  factory RuntimeOptionPrompt_RuntimeOptionValue.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RuntimeOptionPrompt_RuntimeOptionValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RuntimeOptionPrompt.RuntimeOptionValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aE<RuntimeOptionPrompt_RuntimeOptionType>(
        1, _omitFieldNames ? '' : 'promptType',
        protoName: 'promptType',
        enumValues: RuntimeOptionPrompt_RuntimeOptionType.values)
    ..aOS(2, _omitFieldNames ? '' : 'stringValue', protoName: 'stringValue')
    ..aI(3, _omitFieldNames ? '' : 'int32Value', protoName: 'int32Value')
    ..aOS(4, _omitFieldNames ? '' : 'displayName', protoName: 'displayName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RuntimeOptionPrompt_RuntimeOptionValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RuntimeOptionPrompt_RuntimeOptionValue copyWith(
          void Function(RuntimeOptionPrompt_RuntimeOptionValue) updates) =>
      super.copyWith((message) =>
              updates(message as RuntimeOptionPrompt_RuntimeOptionValue))
          as RuntimeOptionPrompt_RuntimeOptionValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeOptionPrompt_RuntimeOptionValue create() =>
      RuntimeOptionPrompt_RuntimeOptionValue._();
  @$core.override
  RuntimeOptionPrompt_RuntimeOptionValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RuntimeOptionPrompt_RuntimeOptionValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RuntimeOptionPrompt_RuntimeOptionValue>(create);
  static RuntimeOptionPrompt_RuntimeOptionValue? _defaultInstance;

  /// The type of the runtime option.
  @$pb.TagNumber(1)
  RuntimeOptionPrompt_RuntimeOptionType get promptType => $_getN(0);
  @$pb.TagNumber(1)
  set promptType(RuntimeOptionPrompt_RuntimeOptionType value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPromptType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPromptType() => $_clearField(1);

  /// The string value of the runtime option, if and only if the type is `STRING`.
  @$pb.TagNumber(2)
  $core.String get stringValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set stringValue($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStringValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringValue() => $_clearField(2);

  /// The 32-bit integer value of the runtime option, if and only if the type is `INT32`.
  @$pb.TagNumber(3)
  $core.int get int32Value => $_getIZ(2);
  @$pb.TagNumber(3)
  set int32Value($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasInt32Value() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt32Value() => $_clearField(3);

  /// The display name of the runtime option, to be used in prompts.
  @$pb.TagNumber(4)
  $core.String get displayName => $_getSZ(3);
  @$pb.TagNumber(4)
  set displayName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDisplayName() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayName() => $_clearField(4);
}

/// `RuntimeOptionPrompt` is a struct that captures information about a runtime option that should be prompted for during
/// `pulumi new`.
class RuntimeOptionPrompt extends $pb.GeneratedMessage {
  factory RuntimeOptionPrompt({
    $core.String? key,
    $core.String? description,
    RuntimeOptionPrompt_RuntimeOptionType? promptType,
    $core.Iterable<RuntimeOptionPrompt_RuntimeOptionValue>? choices,
    RuntimeOptionPrompt_RuntimeOptionValue? default_5,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (description != null) result.description = description;
    if (promptType != null) result.promptType = promptType;
    if (choices != null) result.choices.addAll(choices);
    if (default_5 != null) result.default_5 = default_5;
    return result;
  }

  RuntimeOptionPrompt._();

  factory RuntimeOptionPrompt.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RuntimeOptionPrompt.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RuntimeOptionPrompt',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aE<RuntimeOptionPrompt_RuntimeOptionType>(
        3, _omitFieldNames ? '' : 'promptType',
        protoName: 'promptType',
        enumValues: RuntimeOptionPrompt_RuntimeOptionType.values)
    ..pPM<RuntimeOptionPrompt_RuntimeOptionValue>(
        4, _omitFieldNames ? '' : 'choices',
        subBuilder: RuntimeOptionPrompt_RuntimeOptionValue.create)
    ..aOM<RuntimeOptionPrompt_RuntimeOptionValue>(
        5, _omitFieldNames ? '' : 'default',
        subBuilder: RuntimeOptionPrompt_RuntimeOptionValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RuntimeOptionPrompt clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RuntimeOptionPrompt copyWith(void Function(RuntimeOptionPrompt) updates) =>
      super.copyWith((message) => updates(message as RuntimeOptionPrompt))
          as RuntimeOptionPrompt;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeOptionPrompt create() => RuntimeOptionPrompt._();
  @$core.override
  RuntimeOptionPrompt createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RuntimeOptionPrompt getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RuntimeOptionPrompt>(create);
  static RuntimeOptionPrompt? _defaultInstance;

  /// A unique key that identifies the runtime option.
  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  /// A human-readable description of the runtime option.
  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  /// The type of the runtime option.
  @$pb.TagNumber(3)
  RuntimeOptionPrompt_RuntimeOptionType get promptType => $_getN(2);
  @$pb.TagNumber(3)
  set promptType(RuntimeOptionPrompt_RuntimeOptionType value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPromptType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPromptType() => $_clearField(3);

  /// A set of choices for the runtime option that may be displayed as part of the prompting process.
  @$pb.TagNumber(4)
  $pb.PbList<RuntimeOptionPrompt_RuntimeOptionValue> get choices =>
      $_getList(3);

  /// The default value of the runtime option.
  @$pb.TagNumber(5)
  RuntimeOptionPrompt_RuntimeOptionValue get default_5 => $_getN(4);
  @$pb.TagNumber(5)
  set default_5(RuntimeOptionPrompt_RuntimeOptionValue value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDefault_5() => $_has(4);
  @$pb.TagNumber(5)
  void clearDefault_5() => $_clearField(5);
  @$pb.TagNumber(5)
  RuntimeOptionPrompt_RuntimeOptionValue ensureDefault_5() => $_ensure(4);
}

/// `RuntimeOptionsResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.RuntimeOptionsPrompts) call.
/// It contains information about additional prompts to ask during `pulumi new`.
class RuntimeOptionsResponse extends $pb.GeneratedMessage {
  factory RuntimeOptionsResponse({
    $core.Iterable<RuntimeOptionPrompt>? prompts,
  }) {
    final result = create();
    if (prompts != null) result.prompts.addAll(prompts);
    return result;
  }

  RuntimeOptionsResponse._();

  factory RuntimeOptionsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RuntimeOptionsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RuntimeOptionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<RuntimeOptionPrompt>(1, _omitFieldNames ? '' : 'prompts',
        subBuilder: RuntimeOptionPrompt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RuntimeOptionsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RuntimeOptionsResponse copyWith(
          void Function(RuntimeOptionsResponse) updates) =>
      super.copyWith((message) => updates(message as RuntimeOptionsResponse))
          as RuntimeOptionsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeOptionsResponse create() => RuntimeOptionsResponse._();
  @$core.override
  RuntimeOptionsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RuntimeOptionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RuntimeOptionsResponse>(create);
  static RuntimeOptionsResponse? _defaultInstance;

  /// Prompts to ask the user.
  @$pb.TagNumber(1)
  $pb.PbList<RuntimeOptionPrompt> get prompts => $_getList(0);
}

/// `TemplateRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.Template) call.
class TemplateRequest extends $pb.GeneratedMessage {
  factory TemplateRequest({
    ProgramInfo? info,
    $core.String? projectName,
  }) {
    final result = create();
    if (info != null) result.info = info;
    if (projectName != null) result.projectName = projectName;
    return result;
  }

  TemplateRequest._();

  factory TemplateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<ProgramInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..aOS(2, _omitFieldNames ? '' : 'projectName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateRequest copyWith(void Function(TemplateRequest) updates) =>
      super.copyWith((message) => updates(message as TemplateRequest))
          as TemplateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateRequest create() => TemplateRequest._();
  @$core.override
  TemplateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateRequest>(create);
  static TemplateRequest? _defaultInstance;

  /// The [plugin program](pulumirpc.ProgramInfo) to use.
  @$pb.TagNumber(1)
  ProgramInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ProgramInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  ProgramInfo ensureInfo() => $_ensure(0);

  /// The name of the project we are templating.
  @$pb.TagNumber(2)
  $core.String get projectName => $_getSZ(1);
  @$pb.TagNumber(2)
  set projectName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProjectName() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectName() => $_clearField(2);
}

/// `TemplateResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.Template) call.
class TemplateResponse extends $pb.GeneratedMessage {
  factory TemplateResponse() => create();

  TemplateResponse._();

  factory TemplateResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateResponse copyWith(void Function(TemplateResponse) updates) =>
      super.copyWith((message) => updates(message as TemplateResponse))
          as TemplateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateResponse create() => TemplateResponse._();
  @$core.override
  TemplateResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateResponse>(create);
  static TemplateResponse? _defaultInstance;
}

/// `RunPluginRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.RunPlugin) call.
class RunPluginRequest extends $pb.GeneratedMessage {
  factory RunPluginRequest({
    $core.String? pwd,
    @$core.Deprecated('This field is deprecated.') $core.String? program,
    $core.Iterable<$core.String>? args,
    $core.Iterable<$core.String>? env,
    ProgramInfo? info,
    $core.String? kind,
    $core.String? name,
    $core.bool? attachDebugger,
    $core.String? loaderTarget,
  }) {
    final result = create();
    if (pwd != null) result.pwd = pwd;
    if (program != null) result.program = program;
    if (args != null) result.args.addAll(args);
    if (env != null) result.env.addAll(env);
    if (info != null) result.info = info;
    if (kind != null) result.kind = kind;
    if (name != null) result.name = name;
    if (attachDebugger != null) result.attachDebugger = attachDebugger;
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    return result;
  }

  RunPluginRequest._();

  factory RunPluginRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunPluginRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunPluginRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pwd')
    ..aOS(2, _omitFieldNames ? '' : 'program')
    ..pPS(3, _omitFieldNames ? '' : 'args')
    ..pPS(4, _omitFieldNames ? '' : 'env')
    ..aOM<ProgramInfo>(5, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..aOS(6, _omitFieldNames ? '' : 'kind')
    ..aOS(7, _omitFieldNames ? '' : 'name')
    ..aOB(8, _omitFieldNames ? '' : 'attachDebugger')
    ..aOS(9, _omitFieldNames ? '' : 'loaderTarget')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunPluginRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunPluginRequest copyWith(void Function(RunPluginRequest) updates) =>
      super.copyWith((message) => updates(message as RunPluginRequest))
          as RunPluginRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunPluginRequest create() => RunPluginRequest._();
  @$core.override
  RunPluginRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunPluginRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunPluginRequest>(create);
  static RunPluginRequest? _defaultInstance;

  /// The plugin program's working directory.
  @$pb.TagNumber(1)
  $core.String get pwd => $_getSZ(0);
  @$pb.TagNumber(1)
  set pwd($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPwd() => $_has(0);
  @$pb.TagNumber(1)
  void clearPwd() => $_clearField(1);

  /// The path to the plugin program.
  ///
  /// :::{important}
  /// This is deprecated in favour of passing a [program info](pulumirpc.ProgramInfo) struct as the `info` field, with
  /// the `entry_point` field set to this value.
  /// :::
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get program => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set program($core.String value) => $_setString(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasProgram() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearProgram() => $_clearField(2);

  /// Any arguments to pass to the plugin program.
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get args => $_getList(2);

  /// Any environment variables to set prior to executing the plugin program.
  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get env => $_getList(3);

  /// The [plugin program](pulumirpc.ProgramInfo) to use.
  @$pb.TagNumber(5)
  ProgramInfo get info => $_getN(4);
  @$pb.TagNumber(5)
  set info(ProgramInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  ProgramInfo ensureInfo() => $_ensure(4);

  /// The kind of plugin to run (resource/analyzer/etc).
  @$pb.TagNumber(6)
  $core.String get kind => $_getSZ(5);
  @$pb.TagNumber(6)
  set kind($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasKind() => $_has(5);
  @$pb.TagNumber(6)
  void clearKind() => $_clearField(6);

  /// The name of the plugin (for display purposes)
  @$pb.TagNumber(7)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(7)
  set name($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(7)
  void clearName() => $_clearField(7);

  /// True if a plugin should be started under a debugger.
  @$pb.TagNumber(8)
  $core.bool get attachDebugger => $_getBF(7);
  @$pb.TagNumber(8)
  set attachDebugger($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAttachDebugger() => $_has(7);
  @$pb.TagNumber(8)
  void clearAttachDebugger() => $_clearField(8);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(9)
  $core.String get loaderTarget => $_getSZ(8);
  @$pb.TagNumber(9)
  set loaderTarget($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLoaderTarget() => $_has(8);
  @$pb.TagNumber(9)
  void clearLoaderTarget() => $_clearField(9);
}

enum RunPluginResponse_Output { stdout, stderr, exitcode, notSet }

/// `RunPluginResponse` is the type of responses streamed by a [](pulumirpc.LanguageRuntime.RunPlugin) call.
class RunPluginResponse extends $pb.GeneratedMessage {
  factory RunPluginResponse({
    $core.List<$core.int>? stdout,
    $core.List<$core.int>? stderr,
    $core.int? exitcode,
  }) {
    final result = create();
    if (stdout != null) result.stdout = stdout;
    if (stderr != null) result.stderr = stderr;
    if (exitcode != null) result.exitcode = exitcode;
    return result;
  }

  RunPluginResponse._();

  factory RunPluginResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunPluginResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, RunPluginResponse_Output>
      _RunPluginResponse_OutputByTag = {
    1: RunPluginResponse_Output.stdout,
    2: RunPluginResponse_Output.stderr,
    3: RunPluginResponse_Output.exitcode,
    0: RunPluginResponse_Output.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunPluginResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'stdout', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'stderr', $pb.PbFieldType.OY)
    ..aI(3, _omitFieldNames ? '' : 'exitcode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunPluginResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunPluginResponse copyWith(void Function(RunPluginResponse) updates) =>
      super.copyWith((message) => updates(message as RunPluginResponse))
          as RunPluginResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunPluginResponse create() => RunPluginResponse._();
  @$core.override
  RunPluginResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunPluginResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunPluginResponse>(create);
  static RunPluginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  RunPluginResponse_Output whichOutput() =>
      _RunPluginResponse_OutputByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearOutput() => $_clearField($_whichOneof(0));

  /// A line of standard output.
  @$pb.TagNumber(1)
  $core.List<$core.int> get stdout => $_getN(0);
  @$pb.TagNumber(1)
  set stdout($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStdout() => $_has(0);
  @$pb.TagNumber(1)
  void clearStdout() => $_clearField(1);

  /// A line of standard error.
  @$pb.TagNumber(2)
  $core.List<$core.int> get stderr => $_getN(1);
  @$pb.TagNumber(2)
  set stderr($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStderr() => $_has(1);
  @$pb.TagNumber(2)
  void clearStderr() => $_clearField(2);

  /// An exit code that the plugin program has terminated with. This should be the last message sent by the host.
  @$pb.TagNumber(3)
  $core.int get exitcode => $_getIZ(2);
  @$pb.TagNumber(3)
  set exitcode($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExitcode() => $_has(2);
  @$pb.TagNumber(3)
  void clearExitcode() => $_clearField(3);
}

/// `GenerateProgramRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.GenerateProgram)
/// call.
class GenerateProgramRequest extends $pb.GeneratedMessage {
  factory GenerateProgramRequest({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? source,
    $core.String? loaderTarget,
    $core.bool? strict,
  }) {
    final result = create();
    if (source != null) result.source.addEntries(source);
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    if (strict != null) result.strict = strict;
    return result;
  }

  GenerateProgramRequest._();

  factory GenerateProgramRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GenerateProgramRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateProgramRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'source',
        entryClassName: 'GenerateProgramRequest.SourceEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(2, _omitFieldNames ? '' : 'loaderTarget')
    ..aOB(3, _omitFieldNames ? '' : 'strict')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenerateProgramRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenerateProgramRequest copyWith(
          void Function(GenerateProgramRequest) updates) =>
      super.copyWith((message) => updates(message as GenerateProgramRequest))
          as GenerateProgramRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateProgramRequest create() => GenerateProgramRequest._();
  @$core.override
  GenerateProgramRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GenerateProgramRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateProgramRequest>(create);
  static GenerateProgramRequest? _defaultInstance;

  /// The source of the project, represented as a map of file names to [PCL](pcl) source code.
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get source => $_getMap(0);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(2)
  $core.String get loaderTarget => $_getSZ(1);
  @$pb.TagNumber(2)
  set loaderTarget($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLoaderTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoaderTarget() => $_clearField(2);

  /// True if [PCL binding](pcl-binding) should be strict.
  @$pb.TagNumber(3)
  $core.bool get strict => $_getBF(2);
  @$pb.TagNumber(3)
  set strict($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStrict() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrict() => $_clearField(3);
}

/// `GenerateProgramResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.GenerateProgram) call.
class GenerateProgramResponse extends $pb.GeneratedMessage {
  factory GenerateProgramResponse({
    $core.Iterable<$4.Diagnostic>? diagnostics,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>? source,
  }) {
    final result = create();
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    if (source != null) result.source.addEntries(source);
    return result;
  }

  GenerateProgramResponse._();

  factory GenerateProgramResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GenerateProgramResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateProgramResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<$4.Diagnostic>(1, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: $4.Diagnostic.create)
    ..m<$core.String, $core.List<$core.int>>(2, _omitFieldNames ? '' : 'source',
        entryClassName: 'GenerateProgramResponse.SourceEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenerateProgramResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenerateProgramResponse copyWith(
          void Function(GenerateProgramResponse) updates) =>
      super.copyWith((message) => updates(message as GenerateProgramResponse))
          as GenerateProgramResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateProgramResponse create() => GenerateProgramResponse._();
  @$core.override
  GenerateProgramResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GenerateProgramResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateProgramResponse>(create);
  static GenerateProgramResponse? _defaultInstance;

  /// Any diagnostics raised by code generation.
  @$pb.TagNumber(1)
  $pb.PbList<$4.Diagnostic> get diagnostics => $_getList(0);

  /// The generated program source code, represented as a map of file names to byte contents.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.List<$core.int>> get source => $_getMap(1);
}

/// `GenerateProjectRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.GenerateProject) call.
class GenerateProjectRequest extends $pb.GeneratedMessage {
  factory GenerateProjectRequest({
    $core.String? sourceDirectory,
    $core.String? targetDirectory,
    $core.String? project,
    $core.bool? strict,
    $core.String? loaderTarget,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        localDependencies,
  }) {
    final result = create();
    if (sourceDirectory != null) result.sourceDirectory = sourceDirectory;
    if (targetDirectory != null) result.targetDirectory = targetDirectory;
    if (project != null) result.project = project;
    if (strict != null) result.strict = strict;
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    if (localDependencies != null)
      result.localDependencies.addEntries(localDependencies);
    return result;
  }

  GenerateProjectRequest._();

  factory GenerateProjectRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GenerateProjectRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateProjectRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'targetDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'project')
    ..aOB(4, _omitFieldNames ? '' : 'strict')
    ..aOS(5, _omitFieldNames ? '' : 'loaderTarget')
    ..m<$core.String, $core.String>(
        6, _omitFieldNames ? '' : 'localDependencies',
        entryClassName: 'GenerateProjectRequest.LocalDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenerateProjectRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenerateProjectRequest copyWith(
          void Function(GenerateProjectRequest) updates) =>
      super.copyWith((message) => updates(message as GenerateProjectRequest))
          as GenerateProjectRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateProjectRequest create() => GenerateProjectRequest._();
  @$core.override
  GenerateProjectRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GenerateProjectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateProjectRequest>(create);
  static GenerateProjectRequest? _defaultInstance;

  /// The directory containing [PCL](pcl) source code, from which the project should be generated.
  @$pb.TagNumber(1)
  $core.String get sourceDirectory => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceDirectory($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceDirectory() => $_clearField(1);

  /// The directory in which generated project files should be written. This should be an absolute path on the
  /// filesystem that is accessible to the language host.
  @$pb.TagNumber(2)
  $core.String get targetDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetDirectory($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTargetDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetDirectory() => $_clearField(2);

  /// A string containing JSON to be used as the Pulumi project file (that is, as the contents of `Pulumi.yaml`).
  @$pb.TagNumber(3)
  $core.String get project => $_getSZ(2);
  @$pb.TagNumber(3)
  set project($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearProject() => $_clearField(3);

  /// True if [PCL binding](pcl-binding) should be strict.
  @$pb.TagNumber(4)
  $core.bool get strict => $_getBF(3);
  @$pb.TagNumber(4)
  set strict($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStrict() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrict() => $_clearField(4);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(5)
  $core.String get loaderTarget => $_getSZ(4);
  @$pb.TagNumber(5)
  set loaderTarget($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLoaderTarget() => $_has(4);
  @$pb.TagNumber(5)
  void clearLoaderTarget() => $_clearField(5);

  /// Local dependencies that the generated project should reference explicitly, instead of e.g. using the language's
  /// package system. This is a map of package names to local paths of language-specific artifacts that should be used.
  /// For instance, in the case of a NodeJS project, this might be a map of NPM package names to local paths to be
  /// used, such as `{ "@pulumi/aws": "/some/path/to/aws.tgz" }` if a local tarball is to be used instead of the
  /// published `@pulumi/aws` package.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get localDependencies => $_getMap(5);
}

/// `GenerateProjectResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.GenerateProject) call.
class GenerateProjectResponse extends $pb.GeneratedMessage {
  factory GenerateProjectResponse({
    $core.Iterable<$4.Diagnostic>? diagnostics,
  }) {
    final result = create();
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    return result;
  }

  GenerateProjectResponse._();

  factory GenerateProjectResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GenerateProjectResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateProjectResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<$4.Diagnostic>(1, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: $4.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenerateProjectResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenerateProjectResponse copyWith(
          void Function(GenerateProjectResponse) updates) =>
      super.copyWith((message) => updates(message as GenerateProjectResponse))
          as GenerateProjectResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateProjectResponse create() => GenerateProjectResponse._();
  @$core.override
  GenerateProjectResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GenerateProjectResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateProjectResponse>(create);
  static GenerateProjectResponse? _defaultInstance;

  /// Any diagnostics raised by code generation.
  @$pb.TagNumber(1)
  $pb.PbList<$4.Diagnostic> get diagnostics => $_getList(0);
}

/// `GeneratePackageRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.GeneratePackage) call.
class GeneratePackageRequest extends $pb.GeneratedMessage {
  factory GeneratePackageRequest({
    $core.String? directory,
    $core.String? schema,
    $core.Iterable<$core.MapEntry<$core.String, $core.List<$core.int>>>?
        extraFiles,
    $core.String? loaderTarget,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        localDependencies,
    $core.bool? local,
  }) {
    final result = create();
    if (directory != null) result.directory = directory;
    if (schema != null) result.schema = schema;
    if (extraFiles != null) result.extraFiles.addEntries(extraFiles);
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    if (localDependencies != null)
      result.localDependencies.addEntries(localDependencies);
    if (local != null) result.local = local;
    return result;
  }

  GeneratePackageRequest._();

  factory GeneratePackageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GeneratePackageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GeneratePackageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'directory')
    ..aOS(2, _omitFieldNames ? '' : 'schema')
    ..m<$core.String, $core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'extraFiles',
        entryClassName: 'GeneratePackageRequest.ExtraFilesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(4, _omitFieldNames ? '' : 'loaderTarget')
    ..m<$core.String, $core.String>(
        5, _omitFieldNames ? '' : 'localDependencies',
        entryClassName: 'GeneratePackageRequest.LocalDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(6, _omitFieldNames ? '' : 'local')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GeneratePackageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GeneratePackageRequest copyWith(
          void Function(GeneratePackageRequest) updates) =>
      super.copyWith((message) => updates(message as GeneratePackageRequest))
          as GeneratePackageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeneratePackageRequest create() => GeneratePackageRequest._();
  @$core.override
  GeneratePackageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GeneratePackageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GeneratePackageRequest>(create);
  static GeneratePackageRequest? _defaultInstance;

  /// The directory to generate the package in. This should be an absolute path on the filesystem that is accessible to
  /// the language host.
  @$pb.TagNumber(1)
  $core.String get directory => $_getSZ(0);
  @$pb.TagNumber(1)
  set directory($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirectory() => $_clearField(1);

  /// A JSON-encoded string containing the schema from which the SDK package should be generated.
  @$pb.TagNumber(2)
  $core.String get schema => $_getSZ(1);
  @$pb.TagNumber(2)
  set schema($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => $_clearField(2);

  /// Extra files that should be copied as-is to the generated output.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.List<$core.int>> get extraFiles => $_getMap(2);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(4)
  $core.String get loaderTarget => $_getSZ(3);
  @$pb.TagNumber(4)
  set loaderTarget($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLoaderTarget() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoaderTarget() => $_clearField(4);

  /// Local dependencies that the generated package should reference explicitly, instead of e.g. using the language's
  /// package system. This is a map of package names to local paths of language-specific artifacts that should be used.
  /// For instance, in the case of a NodeJS package, this might be a map of NPM package names to local paths to be
  /// used, such as `{ "@pulumi/aws": "/some/path/to/aws.tgz" }` if a local tarball is to be used instead of the
  /// published `@pulumi/aws` package.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get localDependencies => $_getMap(4);

  /// If true, generates an SDK appropriate for local usage. This may differ from a standard publishable SDK depending
  /// on the language (e.g. for a NodeJS package that is intended to be imported locally, the language host may choose
  /// not to generate a `package.json`).
  @$pb.TagNumber(6)
  $core.bool get local => $_getBF(5);
  @$pb.TagNumber(6)
  set local($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLocal() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocal() => $_clearField(6);
}

/// `GeneratePackageResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.GeneratePackage) call.
class GeneratePackageResponse extends $pb.GeneratedMessage {
  factory GeneratePackageResponse({
    $core.Iterable<$4.Diagnostic>? diagnostics,
  }) {
    final result = create();
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    return result;
  }

  GeneratePackageResponse._();

  factory GeneratePackageResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GeneratePackageResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GeneratePackageResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<$4.Diagnostic>(1, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: $4.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GeneratePackageResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GeneratePackageResponse copyWith(
          void Function(GeneratePackageResponse) updates) =>
      super.copyWith((message) => updates(message as GeneratePackageResponse))
          as GeneratePackageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeneratePackageResponse create() => GeneratePackageResponse._();
  @$core.override
  GeneratePackageResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GeneratePackageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GeneratePackageResponse>(create);
  static GeneratePackageResponse? _defaultInstance;

  /// Any diagnostics raised by code generation.
  @$pb.TagNumber(1)
  $pb.PbList<$4.Diagnostic> get diagnostics => $_getList(0);
}

/// `PackRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.Pack) call.
class PackRequest extends $pb.GeneratedMessage {
  factory PackRequest({
    $core.String? packageDirectory,
    $core.String? destinationDirectory,
  }) {
    final result = create();
    if (packageDirectory != null) result.packageDirectory = packageDirectory;
    if (destinationDirectory != null)
      result.destinationDirectory = destinationDirectory;
    return result;
  }

  PackRequest._();

  factory PackRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'packageDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'destinationDirectory')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackRequest copyWith(void Function(PackRequest) updates) =>
      super.copyWith((message) => updates(message as PackRequest))
          as PackRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackRequest create() => PackRequest._();
  @$core.override
  PackRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackRequest>(create);
  static PackRequest? _defaultInstance;

  /// The directory containing the package to pack. This should be an absolute path on the filesystem that is accessible
  /// to the language host.
  @$pb.TagNumber(1)
  $core.String get packageDirectory => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageDirectory($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPackageDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageDirectory() => $_clearField(1);

  /// The directory to write the packed artifact to. This should be an absolute path on the filesystem that is
  /// accessible to the language host.
  @$pb.TagNumber(2)
  $core.String get destinationDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationDirectory($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDestinationDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationDirectory() => $_clearField(2);
}

/// `PackResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.Pack) call.
class PackResponse extends $pb.GeneratedMessage {
  factory PackResponse({
    $core.String? artifactPath,
  }) {
    final result = create();
    if (artifactPath != null) result.artifactPath = artifactPath;
    return result;
  }

  PackResponse._();

  factory PackResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PackResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'artifactPath')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PackResponse copyWith(void Function(PackResponse) updates) =>
      super.copyWith((message) => updates(message as PackResponse))
          as PackResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackResponse create() => PackResponse._();
  @$core.override
  PackResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PackResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackResponse>(create);
  static PackResponse? _defaultInstance;

  /// The path to the packed artifact. This should be an absolute path on the filesystem that is accessible to the
  /// language host.
  @$pb.TagNumber(1)
  $core.String get artifactPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set artifactPath($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasArtifactPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtifactPath() => $_clearField(1);
}

/// `LanguageHandshakeRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.Handshake) call.
class LanguageHandshakeRequest extends $pb.GeneratedMessage {
  factory LanguageHandshakeRequest({
    $core.String? engineAddress,
    $core.String? rootDirectory,
    $core.String? programDirectory,
  }) {
    final result = create();
    if (engineAddress != null) result.engineAddress = engineAddress;
    if (rootDirectory != null) result.rootDirectory = rootDirectory;
    if (programDirectory != null) result.programDirectory = programDirectory;
    return result;
  }

  LanguageHandshakeRequest._();

  factory LanguageHandshakeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LanguageHandshakeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LanguageHandshakeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'engineAddress')
    ..aOS(2, _omitFieldNames ? '' : 'rootDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'programDirectory')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LanguageHandshakeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LanguageHandshakeRequest copyWith(
          void Function(LanguageHandshakeRequest) updates) =>
      super.copyWith((message) => updates(message as LanguageHandshakeRequest))
          as LanguageHandshakeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LanguageHandshakeRequest create() => LanguageHandshakeRequest._();
  @$core.override
  LanguageHandshakeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LanguageHandshakeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LanguageHandshakeRequest>(create);
  static LanguageHandshakeRequest? _defaultInstance;

  /// The gRPC address of the engine calling the language host.
  @$pb.TagNumber(1)
  $core.String get engineAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set engineAddress($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEngineAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearEngineAddress() => $_clearField(1);

  /// The optional root directory, where the `PulumiPlugin.yaml` file or language binary is located. This can't be sent
  /// when the engine is attaching to a language via a port number.
  @$pb.TagNumber(2)
  $core.String get rootDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set rootDirectory($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRootDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearRootDirectory() => $_clearField(2);

  /// The optional absolute path to the directory of the language program to execute. Generally, but not required to
  /// be, underneath the root directory. This can't be sent when the engine is attaching to a language via a port
  /// number.
  @$pb.TagNumber(3)
  $core.String get programDirectory => $_getSZ(2);
  @$pb.TagNumber(3)
  set programDirectory($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProgramDirectory() => $_has(2);
  @$pb.TagNumber(3)
  void clearProgramDirectory() => $_clearField(3);
}

/// `LanguageHandshakeResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.Handshake) call.
class LanguageHandshakeResponse extends $pb.GeneratedMessage {
  factory LanguageHandshakeResponse() => create();

  LanguageHandshakeResponse._();

  factory LanguageHandshakeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LanguageHandshakeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LanguageHandshakeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LanguageHandshakeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LanguageHandshakeResponse copyWith(
          void Function(LanguageHandshakeResponse) updates) =>
      super.copyWith((message) => updates(message as LanguageHandshakeResponse))
          as LanguageHandshakeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LanguageHandshakeResponse create() => LanguageHandshakeResponse._();
  @$core.override
  LanguageHandshakeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LanguageHandshakeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LanguageHandshakeResponse>(create);
  static LanguageHandshakeResponse? _defaultInstance;
}

class LinkRequest_LinkDependency extends $pb.GeneratedMessage {
  factory LinkRequest_LinkDependency({
    $2.PackageDependency? package,
    $core.String? path,
  }) {
    final result = create();
    if (package != null) result.package = package;
    if (path != null) result.path = path;
    return result;
  }

  LinkRequest_LinkDependency._();

  factory LinkRequest_LinkDependency.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinkRequest_LinkDependency.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinkRequest.LinkDependency',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$2.PackageDependency>(1, _omitFieldNames ? '' : 'package',
        subBuilder: $2.PackageDependency.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkRequest_LinkDependency clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkRequest_LinkDependency copyWith(
          void Function(LinkRequest_LinkDependency) updates) =>
      super.copyWith(
              (message) => updates(message as LinkRequest_LinkDependency))
          as LinkRequest_LinkDependency;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkRequest_LinkDependency create() => LinkRequest_LinkDependency._();
  @$core.override
  LinkRequest_LinkDependency createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LinkRequest_LinkDependency getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinkRequest_LinkDependency>(create);
  static LinkRequest_LinkDependency? _defaultInstance;

  @$pb.TagNumber(1)
  $2.PackageDependency get package => $_getN(0);
  @$pb.TagNumber(1)
  set package($2.PackageDependency value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPackage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackage() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.PackageDependency ensurePackage() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);
}

/// `LinkRequest` is the type of requests sent as part of a [](pulumirpc.LanguageRuntime.Link) call.
class LinkRequest extends $pb.GeneratedMessage {
  factory LinkRequest({
    ProgramInfo? info,
    $core.String? loaderTarget,
    $core.Iterable<LinkRequest_LinkDependency>? packages,
  }) {
    final result = create();
    if (info != null) result.info = info;
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    if (packages != null) result.packages.addAll(packages);
    return result;
  }

  LinkRequest._();

  factory LinkRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinkRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinkRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<ProgramInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..aOS(2, _omitFieldNames ? '' : 'loaderTarget')
    ..pPM<LinkRequest_LinkDependency>(3, _omitFieldNames ? '' : 'packages',
        subBuilder: LinkRequest_LinkDependency.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkRequest copyWith(void Function(LinkRequest) updates) =>
      super.copyWith((message) => updates(message as LinkRequest))
          as LinkRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkRequest create() => LinkRequest._();
  @$core.override
  LinkRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LinkRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinkRequest>(create);
  static LinkRequest? _defaultInstance;

  /// The program to use.
  @$pb.TagNumber(1)
  ProgramInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ProgramInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  ProgramInfo ensureInfo() => $_ensure(0);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(2)
  $core.String get loaderTarget => $_getSZ(1);
  @$pb.TagNumber(2)
  set loaderTarget($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLoaderTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoaderTarget() => $_clearField(2);

  /// Local dependencies that should be linked into the program or plugin's language specific project files.
  /// Each dependency has a path to a language specific artifact. This can be a binary artifact like a
  /// Python wheel or a tar.gz for Node.js, or a source directory.
  @$pb.TagNumber(3)
  $pb.PbList<LinkRequest_LinkDependency> get packages => $_getList(2);
}

/// `LinkResponse` is the type of responses sent by a [](pulumirpc.LanguageRuntime.Link) call.
class LinkResponse extends $pb.GeneratedMessage {
  factory LinkResponse({
    $core.String? importInstructions,
  }) {
    final result = create();
    if (importInstructions != null)
      result.importInstructions = importInstructions;
    return result;
  }

  LinkResponse._();

  factory LinkResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinkResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinkResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'importInstructions')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkResponse copyWith(void Function(LinkResponse) updates) =>
      super.copyWith((message) => updates(message as LinkResponse))
          as LinkResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkResponse create() => LinkResponse._();
  @$core.override
  LinkResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LinkResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinkResponse>(create);
  static LinkResponse? _defaultInstance;

  /// The instructions on how to use a linked package in a program or plugin. These instructions are meant
  /// to be displayed to the user. For example when linking a local Python dependency, this might return
  /// `import my_namespace_mypkg as mypkg`.
  @$pb.TagNumber(1)
  $core.String get importInstructions => $_getSZ(0);
  @$pb.TagNumber(1)
  set importInstructions($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImportInstructions() => $_has(0);
  @$pb.TagNumber(1)
  void clearImportInstructions() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
