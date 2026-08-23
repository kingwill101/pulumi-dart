// This is a generated file - do not edit.
//
// Generated from pulumi/converter.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $1;

import 'codegen/hcl.pb.dart' as $2;
import 'codegen/loader.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ConvertStateRequest extends $pb.GeneratedMessage {
  factory ConvertStateRequest({
    $core.String? mapperTarget,
    $core.Iterable<$core.String>? args,
    $core.String? loaderTarget,
    $core.String? resolverTarget,
  }) {
    final result = create();
    if (mapperTarget != null) result.mapperTarget = mapperTarget;
    if (args != null) result.args.addAll(args);
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    if (resolverTarget != null) result.resolverTarget = resolverTarget;
    return result;
  }

  ConvertStateRequest._();

  factory ConvertStateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertStateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertStateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mapperTarget')
    ..pPS(2, _omitFieldNames ? '' : 'args')
    ..aOS(3, _omitFieldNames ? '' : 'loaderTarget')
    ..aOS(4, _omitFieldNames ? '' : 'resolverTarget')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertStateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertStateRequest copyWith(void Function(ConvertStateRequest) updates) =>
      super.copyWith((message) => updates(message as ConvertStateRequest))
          as ConvertStateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertStateRequest create() => ConvertStateRequest._();
  @$core.override
  ConvertStateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertStateRequest>(create);
  static ConvertStateRequest? _defaultInstance;

  /// the gRPC target of the mapper service.
  @$pb.TagNumber(1)
  $core.String get mapperTarget => $_getSZ(0);
  @$pb.TagNumber(1)
  set mapperTarget($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMapperTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearMapperTarget() => $_clearField(1);

  /// the args passed to `pulumi import` for this conversion. Normally used to specifiy a state file to
  /// import from.
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get args => $_getList(1);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(3)
  $core.String get loaderTarget => $_getSZ(2);
  @$pb.TagNumber(3)
  set loaderTarget($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLoaderTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearLoaderTarget() => $_clearField(3);

  /// The target of a [](pulumirpc.PackageResolver) service the converter can use to resolve package
  /// specifications to concrete package dependencies. May be empty on older engines.
  @$pb.TagNumber(4)
  $core.String get resolverTarget => $_getSZ(3);
  @$pb.TagNumber(4)
  set resolverTarget($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasResolverTarget() => $_has(3);
  @$pb.TagNumber(4)
  void clearResolverTarget() => $_clearField(4);
}

/// A ResourceImport specifies a resource to import.
class ResourceImport extends $pb.GeneratedMessage {
  factory ResourceImport({
    $core.String? type,
    $core.String? name,
    $core.String? id,
    $core.String? version,
    $core.String? pluginDownloadURL,
    $core.String? logicalName,
    $core.bool? isComponent,
    $core.bool? isRemote,
    ResourceParameterization? parameterization,
    ResourceExtension? extension_10,
    $core.String? parent,
    $core.Iterable<$core.String>? properties,
    $core.String? provider,
    $1.Struct? inputs,
    $1.Struct? outputs,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (id != null) result.id = id;
    if (version != null) result.version = version;
    if (pluginDownloadURL != null) result.pluginDownloadURL = pluginDownloadURL;
    if (logicalName != null) result.logicalName = logicalName;
    if (isComponent != null) result.isComponent = isComponent;
    if (isRemote != null) result.isRemote = isRemote;
    if (parameterization != null) result.parameterization = parameterization;
    if (extension_10 != null) result.extension_10 = extension_10;
    if (parent != null) result.parent = parent;
    if (properties != null) result.properties.addAll(properties);
    if (provider != null) result.provider = provider;
    if (inputs != null) result.inputs = inputs;
    if (outputs != null) result.outputs = outputs;
    return result;
  }

  ResourceImport._();

  factory ResourceImport.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceImport.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceImport',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'id')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOS(5, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOS(6, _omitFieldNames ? '' : 'logicalName')
    ..aOB(7, _omitFieldNames ? '' : 'isComponent')
    ..aOB(8, _omitFieldNames ? '' : 'isRemote')
    ..aOM<ResourceParameterization>(
        9, _omitFieldNames ? '' : 'parameterization',
        subBuilder: ResourceParameterization.create)
    ..aOM<ResourceExtension>(10, _omitFieldNames ? '' : 'extension',
        subBuilder: ResourceExtension.create)
    ..aOS(11, _omitFieldNames ? '' : 'parent')
    ..pPS(12, _omitFieldNames ? '' : 'properties')
    ..aOS(13, _omitFieldNames ? '' : 'provider')
    ..aOM<$1.Struct>(14, _omitFieldNames ? '' : 'inputs',
        subBuilder: $1.Struct.create)
    ..aOM<$1.Struct>(15, _omitFieldNames ? '' : 'outputs',
        subBuilder: $1.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceImport clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceImport copyWith(void Function(ResourceImport) updates) =>
      super.copyWith((message) => updates(message as ResourceImport))
          as ResourceImport;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceImport create() => ResourceImport._();
  @$core.override
  ResourceImport createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceImport getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceImport>(create);
  static ResourceImport? _defaultInstance;

  /// the type token for the resource.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// the name of the resource.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// the ID of the resource.
  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);

  /// the provider version to use for the resource, if any.
  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);

  /// the provider PluginDownloadURL to use for the resource, if any.
  @$pb.TagNumber(5)
  $core.String get pluginDownloadURL => $_getSZ(4);
  @$pb.TagNumber(5)
  set pluginDownloadURL($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPluginDownloadURL() => $_has(4);
  @$pb.TagNumber(5)
  void clearPluginDownloadURL() => $_clearField(5);

  /// the logical name of the resource.
  @$pb.TagNumber(6)
  $core.String get logicalName => $_getSZ(5);
  @$pb.TagNumber(6)
  set logicalName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLogicalName() => $_has(5);
  @$pb.TagNumber(6)
  void clearLogicalName() => $_clearField(6);

  /// true if this is a component resource.
  @$pb.TagNumber(7)
  $core.bool get isComponent => $_getBF(6);
  @$pb.TagNumber(7)
  set isComponent($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsComponent() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsComponent() => $_clearField(7);

  /// true if this is a remote resource. Ignored if is_component is false.
  @$pb.TagNumber(8)
  $core.bool get isRemote => $_getBF(7);
  @$pb.TagNumber(8)
  set isRemote($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsRemote() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsRemote() => $_clearField(8);

  /// the replacement parameterization to use for the resource's provider, if any. Set when the resource
  /// should be imported under a parameterized (e.g. dynamically bridged) provider rather than a plain one.
  @$pb.TagNumber(9)
  ResourceParameterization get parameterization => $_getN(8);
  @$pb.TagNumber(9)
  set parameterization(ResourceParameterization value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasParameterization() => $_has(8);
  @$pb.TagNumber(9)
  void clearParameterization() => $_clearField(9);
  @$pb.TagNumber(9)
  ResourceParameterization ensureParameterization() => $_ensure(8);

  /// the extension parameterization to apply to the resource's provider, if any. Unlike a replacement
  /// parameterization, the resource's own type is in the base provider's package; the extension is a blob
  /// applied on top of that provider. Mutually exclusive with parameterization.
  @$pb.TagNumber(10)
  ResourceExtension get extension_10 => $_getN(9);
  @$pb.TagNumber(10)
  set extension_10(ResourceExtension value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasExtension_10() => $_has(9);
  @$pb.TagNumber(10)
  void clearExtension_10() => $_clearField(10);
  @$pb.TagNumber(10)
  ResourceExtension ensureExtension_10() => $_ensure(9);

  /// the name of the resource's parent, if any. Must reference the name of another resource in the same
  /// response; resources without a parent are parented to the stack root.
  @$pb.TagNumber(11)
  $core.String get parent => $_getSZ(10);
  @$pb.TagNumber(11)
  set parent($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasParent() => $_has(10);
  @$pb.TagNumber(11)
  void clearParent() => $_clearField(11);

  /// the input properties to include when generating code for the resource. Defaults to the resource's
  /// required properties.
  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get properties => $_getList(11);

  /// the name of the resource's explicit provider, if any. Must reference the name of a provider
  /// declared as another resource (of type "pulumi:providers:<package>") in the same response;
  /// resources without a provider are served by an appropriate default provider.
  @$pb.TagNumber(13)
  $core.String get provider => $_getSZ(12);
  @$pb.TagNumber(13)
  set provider($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasProvider() => $_has(12);
  @$pb.TagNumber(13)
  void clearProvider() => $_clearField(13);

  /// input properties supplied for the resource, if any. Values the provider's Read cannot return
  /// (e.g. write-only attributes) are taken from here instead. For a provider declared in the
  /// response, inputs is its configuration. Secret values are marked with Pulumi's standard secret
  /// signature.
  @$pb.TagNumber(14)
  $1.Struct get inputs => $_getN(13);
  @$pb.TagNumber(14)
  set inputs($1.Struct value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasInputs() => $_has(13);
  @$pb.TagNumber(14)
  void clearInputs() => $_clearField(14);
  @$pb.TagNumber(14)
  $1.Struct ensureInputs() => $_ensure(13);

  /// the resource's full output state, if any. When set, the resource is imported from these values
  /// directly and the provider's Read is skipped entirely. Secret values are marked with Pulumi's
  /// standard secret signature.
  @$pb.TagNumber(15)
  $1.Struct get outputs => $_getN(14);
  @$pb.TagNumber(15)
  set outputs($1.Struct value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasOutputs() => $_has(14);
  @$pb.TagNumber(15)
  void clearOutputs() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.Struct ensureOutputs() => $_ensure(14);
}

/// A ResourceParameterization describes the base plugin that a resource's parameterized provider is built
/// from. The parameterized package name and version are taken from the resource's own type and version.
class ResourceParameterization extends $pb.GeneratedMessage {
  factory ResourceParameterization({
    $core.String? pluginName,
    $core.String? pluginVersion,
    $core.List<$core.int>? value,
  }) {
    final result = create();
    if (pluginName != null) result.pluginName = pluginName;
    if (pluginVersion != null) result.pluginVersion = pluginVersion;
    if (value != null) result.value = value;
    return result;
  }

  ResourceParameterization._();

  factory ResourceParameterization.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceParameterization.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceParameterization',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pluginName')
    ..aOS(2, _omitFieldNames ? '' : 'pluginVersion')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceParameterization clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceParameterization copyWith(
          void Function(ResourceParameterization) updates) =>
      super.copyWith((message) => updates(message as ResourceParameterization))
          as ResourceParameterization;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceParameterization create() => ResourceParameterization._();
  @$core.override
  ResourceParameterization createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceParameterization getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceParameterization>(create);
  static ResourceParameterization? _defaultInstance;

  /// the name of the base plugin to parameterize (e.g. "terraform-provider").
  @$pb.TagNumber(1)
  $core.String get pluginName => $_getSZ(0);
  @$pb.TagNumber(1)
  set pluginName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPluginName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPluginName() => $_clearField(1);

  /// the version of the base plugin to parameterize.
  @$pb.TagNumber(2)
  $core.String get pluginVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set pluginVersion($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPluginVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginVersion() => $_clearField(2);

  /// the parameter value to apply to the base plugin.
  @$pb.TagNumber(3)
  $core.List<$core.int> get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);
}

/// A ResourceExtension describes an extension parameterization to apply to a resource's (base) provider.
class ResourceExtension extends $pb.GeneratedMessage {
  factory ResourceExtension({
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

  ResourceExtension._();

  factory ResourceExtension.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceExtension.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceExtension',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceExtension clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceExtension copyWith(void Function(ResourceExtension) updates) =>
      super.copyWith((message) => updates(message as ResourceExtension))
          as ResourceExtension;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceExtension create() => ResourceExtension._();
  @$core.override
  ResourceExtension createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceExtension getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceExtension>(create);
  static ResourceExtension? _defaultInstance;

  /// the name of the extension package.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// the version of the extension package.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  /// the parameter value for the extension.
  @$pb.TagNumber(3)
  $core.List<$core.int> get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);
}

class ConvertStateResponse extends $pb.GeneratedMessage {
  factory ConvertStateResponse({
    $core.Iterable<ResourceImport>? resources,
    $core.Iterable<$2.Diagnostic>? diagnostics,
  }) {
    final result = create();
    if (resources != null) result.resources.addAll(resources);
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    return result;
  }

  ConvertStateResponse._();

  factory ConvertStateResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertStateResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertStateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<ResourceImport>(1, _omitFieldNames ? '' : 'resources',
        subBuilder: ResourceImport.create)
    ..pPM<$2.Diagnostic>(2, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: $2.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertStateResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertStateResponse copyWith(void Function(ConvertStateResponse) updates) =>
      super.copyWith((message) => updates(message as ConvertStateResponse))
          as ConvertStateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertStateResponse create() => ConvertStateResponse._();
  @$core.override
  ConvertStateResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertStateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertStateResponse>(create);
  static ConvertStateResponse? _defaultInstance;

  /// a list of resources to import.
  @$pb.TagNumber(1)
  $pb.PbList<ResourceImport> get resources => $_getList(0);

  /// any diagnostics from state conversion.
  @$pb.TagNumber(2)
  $pb.PbList<$2.Diagnostic> get diagnostics => $_getList(1);
}

class ConvertProgramRequest extends $pb.GeneratedMessage {
  factory ConvertProgramRequest({
    $core.String? sourceDirectory,
    $core.String? targetDirectory,
    $core.String? mapperTarget,
    $core.String? loaderTarget,
    $core.Iterable<$core.String>? args,
    $core.String? generatedProjectDirectory,
  }) {
    final result = create();
    if (sourceDirectory != null) result.sourceDirectory = sourceDirectory;
    if (targetDirectory != null) result.targetDirectory = targetDirectory;
    if (mapperTarget != null) result.mapperTarget = mapperTarget;
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    if (args != null) result.args.addAll(args);
    if (generatedProjectDirectory != null)
      result.generatedProjectDirectory = generatedProjectDirectory;
    return result;
  }

  ConvertProgramRequest._();

  factory ConvertProgramRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertProgramRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertProgramRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'targetDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'mapperTarget')
    ..aOS(4, _omitFieldNames ? '' : 'loaderTarget')
    ..pPS(5, _omitFieldNames ? '' : 'args')
    ..aOS(6, _omitFieldNames ? '' : 'generatedProjectDirectory')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertProgramRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertProgramRequest copyWith(
          void Function(ConvertProgramRequest) updates) =>
      super.copyWith((message) => updates(message as ConvertProgramRequest))
          as ConvertProgramRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertProgramRequest create() => ConvertProgramRequest._();
  @$core.override
  ConvertProgramRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertProgramRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertProgramRequest>(create);
  static ConvertProgramRequest? _defaultInstance;

  /// the source directory containing the program to convert from.
  @$pb.TagNumber(1)
  $core.String get sourceDirectory => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceDirectory($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceDirectory() => $_clearField(1);

  /// a target directory to write the resulting PCL code and project file to.
  @$pb.TagNumber(2)
  $core.String get targetDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetDirectory($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTargetDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetDirectory() => $_clearField(2);

  /// the gRPC target of the mapper service.
  @$pb.TagNumber(3)
  $core.String get mapperTarget => $_getSZ(2);
  @$pb.TagNumber(3)
  set mapperTarget($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMapperTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearMapperTarget() => $_clearField(3);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(4)
  $core.String get loaderTarget => $_getSZ(3);
  @$pb.TagNumber(4)
  set loaderTarget($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLoaderTarget() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoaderTarget() => $_clearField(4);

  /// the args passed to `pulumi convert` for this conversion. Normally used to specifiy a root file, or conversion options.
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get args => $_getList(4);

  /// the directory where the final generated project for the eventual destination language will be written.
  /// use to determine relative paths of any asset that will be copied over.
  /// Do not write files to this directory as these files might be overwritten in
  /// the project generation process.
  @$pb.TagNumber(6)
  $core.String get generatedProjectDirectory => $_getSZ(5);
  @$pb.TagNumber(6)
  set generatedProjectDirectory($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGeneratedProjectDirectory() => $_has(5);
  @$pb.TagNumber(6)
  void clearGeneratedProjectDirectory() => $_clearField(6);
}

class ConvertProgramResponse extends $pb.GeneratedMessage {
  factory ConvertProgramResponse({
    $core.Iterable<$2.Diagnostic>? diagnostics,
  }) {
    final result = create();
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    return result;
  }

  ConvertProgramResponse._();

  factory ConvertProgramResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertProgramResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertProgramResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<$2.Diagnostic>(1, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: $2.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertProgramResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertProgramResponse copyWith(
          void Function(ConvertProgramResponse) updates) =>
      super.copyWith((message) => updates(message as ConvertProgramResponse))
          as ConvertProgramResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertProgramResponse create() => ConvertProgramResponse._();
  @$core.override
  ConvertProgramResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertProgramResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertProgramResponse>(create);
  static ConvertProgramResponse? _defaultInstance;

  /// any diagnostics from code generation.
  @$pb.TagNumber(1)
  $pb.PbList<$2.Diagnostic> get diagnostics => $_getList(0);
}

class ConvertSnippetRequest_ResourceReference extends $pb.GeneratedMessage {
  factory ConvertSnippetRequest_ResourceReference({
    $core.String? token,
    $3.GetSchemaRequest? package,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (package != null) result.package = package;
    return result;
  }

  ConvertSnippetRequest_ResourceReference._();

  factory ConvertSnippetRequest_ResourceReference.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertSnippetRequest_ResourceReference.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertSnippetRequest.ResourceReference',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOM<$3.GetSchemaRequest>(2, _omitFieldNames ? '' : 'package',
        subBuilder: $3.GetSchemaRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertSnippetRequest_ResourceReference clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertSnippetRequest_ResourceReference copyWith(
          void Function(ConvertSnippetRequest_ResourceReference) updates) =>
      super.copyWith((message) =>
              updates(message as ConvertSnippetRequest_ResourceReference))
          as ConvertSnippetRequest_ResourceReference;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertSnippetRequest_ResourceReference create() =>
      ConvertSnippetRequest_ResourceReference._();
  @$core.override
  ConvertSnippetRequest_ResourceReference createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertSnippetRequest_ResourceReference getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConvertSnippetRequest_ResourceReference>(create);
  static ConvertSnippetRequest_ResourceReference? _defaultInstance;

  /// The resource token for the referenced resource.
  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  /// The package description to load for the referenced resource.
  @$pb.TagNumber(2)
  $3.GetSchemaRequest get package => $_getN(1);
  @$pb.TagNumber(2)
  set package($3.GetSchemaRequest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPackage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackage() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.GetSchemaRequest ensurePackage() => $_ensure(1);
}

class ConvertSnippetRequest extends $pb.GeneratedMessage {
  factory ConvertSnippetRequest({
    $core.String? filename,
    $core.List<$core.int>? source,
    $core.String? targetLoader,
    $3.GetSchemaRequest? package,
    $core.String? token,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    $core.Iterable<
            $core
            .MapEntry<$core.String, ConvertSnippetRequest_ResourceReference>>?
        resources,
  }) {
    final result = create();
    if (filename != null) result.filename = filename;
    if (source != null) result.source = source;
    if (targetLoader != null) result.targetLoader = targetLoader;
    if (package != null) result.package = package;
    if (token != null) result.token = token;
    if (attributes != null) result.attributes.addEntries(attributes);
    if (resources != null) result.resources.addEntries(resources);
    return result;
  }

  ConvertSnippetRequest._();

  factory ConvertSnippetRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertSnippetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertSnippetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filename')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'targetLoader')
    ..aOM<$3.GetSchemaRequest>(4, _omitFieldNames ? '' : 'package',
        subBuilder: $3.GetSchemaRequest.create)
    ..aOS(5, _omitFieldNames ? '' : 'token')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'ConvertSnippetRequest.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..m<$core.String, ConvertSnippetRequest_ResourceReference>(
        7, _omitFieldNames ? '' : 'resources',
        entryClassName: 'ConvertSnippetRequest.ResourcesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ConvertSnippetRequest_ResourceReference.create,
        valueDefaultOrMaker: ConvertSnippetRequest_ResourceReference.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertSnippetRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertSnippetRequest copyWith(
          void Function(ConvertSnippetRequest) updates) =>
      super.copyWith((message) => updates(message as ConvertSnippetRequest))
          as ConvertSnippetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertSnippetRequest create() => ConvertSnippetRequest._();
  @$core.override
  ConvertSnippetRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertSnippetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertSnippetRequest>(create);
  static ConvertSnippetRequest? _defaultInstance;

  /// The name of the source file. This is used for diagnostics.
  @$pb.TagNumber(1)
  $core.String get filename => $_getSZ(0);
  @$pb.TagNumber(1)
  set filename($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFilename() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilename() => $_clearField(1);

  /// The raw bytes of the source file.
  @$pb.TagNumber(2)
  $core.List<$core.int> get source => $_getN(1);
  @$pb.TagNumber(2)
  set source($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => $_clearField(2);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(3)
  $core.String get targetLoader => $_getSZ(2);
  @$pb.TagNumber(3)
  set targetLoader($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetLoader() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetLoader() => $_clearField(3);

  /// The package description to load which contains the token.
  @$pb.TagNumber(4)
  $3.GetSchemaRequest get package => $_getN(3);
  @$pb.TagNumber(4)
  set package($3.GetSchemaRequest value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPackage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPackage() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.GetSchemaRequest ensurePackage() => $_ensure(3);

  /// The token to use when converting the snippet. This may be a provider token, such as `pulumi:providers:pkg`,
  /// a function token, or a resource token.
  @$pb.TagNumber(5)
  $core.String get token => $_getSZ(4);
  @$pb.TagNumber(5)
  set token($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearToken() => $_clearField(5);

  /// any extra attributes to convert.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(5);

  /// any external resource references to convert.
  @$pb.TagNumber(7)
  $pb.PbMap<$core.String, ConvertSnippetRequest_ResourceReference>
      get resources => $_getMap(6);
}

class ConvertSnippetResponse extends $pb.GeneratedMessage {
  factory ConvertSnippetResponse({
    $core.Iterable<$2.Diagnostic>? diagnostics,
    $core.String? filename,
    $core.List<$core.int>? source,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? resourceNames,
  }) {
    final result = create();
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    if (filename != null) result.filename = filename;
    if (source != null) result.source = source;
    if (attributes != null) result.attributes.addEntries(attributes);
    if (resourceNames != null) result.resourceNames.addEntries(resourceNames);
    return result;
  }

  ConvertSnippetResponse._();

  factory ConvertSnippetResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertSnippetResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertSnippetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<$2.Diagnostic>(1, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: $2.Diagnostic.create)
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OY)
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'ConvertSnippetResponse.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'resourceNames',
        entryClassName: 'ConvertSnippetResponse.ResourceNamesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertSnippetResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertSnippetResponse copyWith(
          void Function(ConvertSnippetResponse) updates) =>
      super.copyWith((message) => updates(message as ConvertSnippetResponse))
          as ConvertSnippetResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertSnippetResponse create() => ConvertSnippetResponse._();
  @$core.override
  ConvertSnippetResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertSnippetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertSnippetResponse>(create);
  static ConvertSnippetResponse? _defaultInstance;

  /// Any diagnostics raised by code generation.
  @$pb.TagNumber(1)
  $pb.PbList<$2.Diagnostic> get diagnostics => $_getList(0);

  /// The generated PCL filename.
  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => $_clearField(2);

  /// The generated PCL source code.
  @$pb.TagNumber(3)
  $core.List<$core.int> get source => $_getN(2);
  @$pb.TagNumber(3)
  set source($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => $_clearField(3);

  /// any extra attributes to merge into the final pcl result.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(3);

  /// any external resource names that were rewritten during conversion. The keys are identifiers
  /// in the source language and the values are identifiers in the generated PCL.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get resourceNames => $_getMap(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
