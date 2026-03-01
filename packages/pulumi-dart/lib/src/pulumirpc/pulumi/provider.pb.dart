// This is a generated file - do not edit.
//
// Generated from pulumi/provider.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $3;

import 'alias.pb.dart' as $4;
import 'provider.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'provider.pbenum.dart';

/// `ProviderHandshakeRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.Handshake) call.
class ProviderHandshakeRequest extends $pb.GeneratedMessage {
  factory ProviderHandshakeRequest({
    $core.String? engineAddress,
    $core.String? rootDirectory,
    $core.String? programDirectory,
    $core.bool? configureWithUrn,
    $core.bool? supportsViews,
    $core.bool? supportsRefreshBeforeUpdate,
    $core.bool? invokeWithPreview,
  }) {
    final result = create();
    if (engineAddress != null) result.engineAddress = engineAddress;
    if (rootDirectory != null) result.rootDirectory = rootDirectory;
    if (programDirectory != null) result.programDirectory = programDirectory;
    if (configureWithUrn != null) result.configureWithUrn = configureWithUrn;
    if (supportsViews != null) result.supportsViews = supportsViews;
    if (supportsRefreshBeforeUpdate != null)
      result.supportsRefreshBeforeUpdate = supportsRefreshBeforeUpdate;
    if (invokeWithPreview != null) result.invokeWithPreview = invokeWithPreview;
    return result;
  }

  ProviderHandshakeRequest._();

  factory ProviderHandshakeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProviderHandshakeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProviderHandshakeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'engineAddress')
    ..aOS(2, _omitFieldNames ? '' : 'rootDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'programDirectory')
    ..aOB(4, _omitFieldNames ? '' : 'configureWithUrn')
    ..aOB(5, _omitFieldNames ? '' : 'supportsViews')
    ..aOB(6, _omitFieldNames ? '' : 'supportsRefreshBeforeUpdate')
    ..aOB(7, _omitFieldNames ? '' : 'invokeWithPreview')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProviderHandshakeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProviderHandshakeRequest copyWith(
          void Function(ProviderHandshakeRequest) updates) =>
      super.copyWith((message) => updates(message as ProviderHandshakeRequest))
          as ProviderHandshakeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProviderHandshakeRequest create() => ProviderHandshakeRequest._();
  @$core.override
  ProviderHandshakeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProviderHandshakeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProviderHandshakeRequest>(create);
  static ProviderHandshakeRequest? _defaultInstance;

  /// The gRPC address of the engine handshaking with the provider. At a minimum, this address will expose an instance
  /// of the [](pulumirpc.Engine) service.
  @$pb.TagNumber(1)
  $core.String get engineAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set engineAddress($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEngineAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearEngineAddress() => $_clearField(1);

  /// A *root directory* where the provider's binary, `PulumiPlugin.yaml`, or other identifying source code is located.
  /// In the event that the provider is *not* being booted by the engine (e.g. in the case that the engine has been
  /// asked to attach to an existing running provider instance via a host/port number), this field will be empty.
  @$pb.TagNumber(2)
  $core.String get rootDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set rootDirectory($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRootDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearRootDirectory() => $_clearField(2);

  /// A *program directory* in which the provider should execute. This is generally a subdirectory of the root
  /// directory, though this is not required. In the event that the provider is *not* being booted by the engine (e.g.
  /// in the case that the engine has been asked to attach to an existing running provider instance via a host/port
  /// number), this field will be empty.
  @$pb.TagNumber(3)
  $core.String get programDirectory => $_getSZ(2);
  @$pb.TagNumber(3)
  set programDirectory($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProgramDirectory() => $_has(2);
  @$pb.TagNumber(3)
  void clearProgramDirectory() => $_clearField(3);

  /// If true the engine will send URN, Name, Type, and ID to the provider as part of the configuration.
  @$pb.TagNumber(4)
  $core.bool get configureWithUrn => $_getBF(3);
  @$pb.TagNumber(4)
  set configureWithUrn($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasConfigureWithUrn() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfigureWithUrn() => $_clearField(4);

  /// If true the engine supports views and can send the address of a [](pulumirpc.ResourceStatus) service which can be
  /// used to e.g. create or update view resources.
  @$pb.TagNumber(5)
  $core.bool get supportsViews => $_getBF(4);
  @$pb.TagNumber(5)
  set supportsViews($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSupportsViews() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupportsViews() => $_clearField(5);

  /// If true the engine supports letting the provider mark resource states as requiring refresh before update.
  @$pb.TagNumber(6)
  $core.bool get supportsRefreshBeforeUpdate => $_getBF(5);
  @$pb.TagNumber(6)
  set supportsRefreshBeforeUpdate($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSupportsRefreshBeforeUpdate() => $_has(5);
  @$pb.TagNumber(6)
  void clearSupportsRefreshBeforeUpdate() => $_clearField(6);

  /// If true the engine will send `preview` to `Invoke` methods to let them know if the current operation is a preview or up.
  @$pb.TagNumber(7)
  $core.bool get invokeWithPreview => $_getBF(6);
  @$pb.TagNumber(7)
  set invokeWithPreview($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasInvokeWithPreview() => $_has(6);
  @$pb.TagNumber(7)
  void clearInvokeWithPreview() => $_clearField(7);
}

/// `ProviderHandshakeResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.Handshake) call.
class ProviderHandshakeResponse extends $pb.GeneratedMessage {
  factory ProviderHandshakeResponse({
    $core.bool? acceptSecrets,
    $core.bool? acceptResources,
    $core.bool? acceptOutputs,
    $core.bool? supportsAutonamingConfiguration,
  }) {
    final result = create();
    if (acceptSecrets != null) result.acceptSecrets = acceptSecrets;
    if (acceptResources != null) result.acceptResources = acceptResources;
    if (acceptOutputs != null) result.acceptOutputs = acceptOutputs;
    if (supportsAutonamingConfiguration != null)
      result.supportsAutonamingConfiguration = supportsAutonamingConfiguration;
    return result;
  }

  ProviderHandshakeResponse._();

  factory ProviderHandshakeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProviderHandshakeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProviderHandshakeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'acceptSecrets')
    ..aOB(2, _omitFieldNames ? '' : 'acceptResources')
    ..aOB(3, _omitFieldNames ? '' : 'acceptOutputs')
    ..aOB(4, _omitFieldNames ? '' : 'supportsAutonamingConfiguration')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProviderHandshakeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProviderHandshakeResponse copyWith(
          void Function(ProviderHandshakeResponse) updates) =>
      super.copyWith((message) => updates(message as ProviderHandshakeResponse))
          as ProviderHandshakeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProviderHandshakeResponse create() => ProviderHandshakeResponse._();
  @$core.override
  ProviderHandshakeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProviderHandshakeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProviderHandshakeResponse>(create);
  static ProviderHandshakeResponse? _defaultInstance;

  /// True if and only if the provider supports secrets. If true, the caller should pass secrets as strongly typed
  /// values to the provider. *Must* match the value returned in response to [](pulumirpc.ResourceProvider.Configure).
  @$pb.TagNumber(1)
  $core.bool get acceptSecrets => $_getBF(0);
  @$pb.TagNumber(1)
  set acceptSecrets($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAcceptSecrets() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptSecrets() => $_clearField(1);

  /// True if and only if the provider supports strongly typed resources. If true, the caller should pass resources as
  /// strongly typed values to the provider. *Must* match the value returned in response to
  /// [](pulumirpc.ResourceProvider.Configure).
  @$pb.TagNumber(2)
  $core.bool get acceptResources => $_getBF(1);
  @$pb.TagNumber(2)
  set acceptResources($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAcceptResources() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceptResources() => $_clearField(2);

  /// True if and only if the provider supports output values as inputs. If true, the engine should pass output values
  /// to the provider where possible. *Must* match the value returned in response to
  /// [](pulumirpc.ResourceProvider.Configure).
  @$pb.TagNumber(3)
  $core.bool get acceptOutputs => $_getBF(2);
  @$pb.TagNumber(3)
  set acceptOutputs($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAcceptOutputs() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcceptOutputs() => $_clearField(3);

  /// True if the provider accepts and respects autonaming configuration that the engine provides on behalf of the
  /// user. *Must* match the value returned in response to [](pulumirpc.ResourceProvider.Configure).
  @$pb.TagNumber(4)
  $core.bool get supportsAutonamingConfiguration => $_getBF(3);
  @$pb.TagNumber(4)
  set supportsAutonamingConfiguration($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSupportsAutonamingConfiguration() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupportsAutonamingConfiguration() => $_clearField(4);
}

/// A parameter value, represented as an array of strings, as might be provided by a command-line invocation, such as
/// that used to generate an SDK.
class ParameterizeRequest_ParametersArgs extends $pb.GeneratedMessage {
  factory ParameterizeRequest_ParametersArgs({
    $core.Iterable<$core.String>? args,
  }) {
    final result = create();
    if (args != null) result.args.addAll(args);
    return result;
  }

  ParameterizeRequest_ParametersArgs._();

  factory ParameterizeRequest_ParametersArgs.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ParameterizeRequest_ParametersArgs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ParameterizeRequest.ParametersArgs',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'args')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ParameterizeRequest_ParametersArgs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ParameterizeRequest_ParametersArgs copyWith(
          void Function(ParameterizeRequest_ParametersArgs) updates) =>
      super.copyWith((message) =>
              updates(message as ParameterizeRequest_ParametersArgs))
          as ParameterizeRequest_ParametersArgs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest_ParametersArgs create() =>
      ParameterizeRequest_ParametersArgs._();
  @$core.override
  ParameterizeRequest_ParametersArgs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest_ParametersArgs getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ParameterizeRequest_ParametersArgs>(
          create);
  static ParameterizeRequest_ParametersArgs? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get args => $_getList(0);
}

/// A parameter value, represented by an arbitrary array of bytes accompanied by a name and version. This is expected
/// to be the format used by parameterized provider SDKs.
class ParameterizeRequest_ParametersValue extends $pb.GeneratedMessage {
  factory ParameterizeRequest_ParametersValue({
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

  ParameterizeRequest_ParametersValue._();

  factory ParameterizeRequest_ParametersValue.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ParameterizeRequest_ParametersValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ParameterizeRequest.ParametersValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ParameterizeRequest_ParametersValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ParameterizeRequest_ParametersValue copyWith(
          void Function(ParameterizeRequest_ParametersValue) updates) =>
      super.copyWith((message) =>
              updates(message as ParameterizeRequest_ParametersValue))
          as ParameterizeRequest_ParametersValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest_ParametersValue create() =>
      ParameterizeRequest_ParametersValue._();
  @$core.override
  ParameterizeRequest_ParametersValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest_ParametersValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ParameterizeRequest_ParametersValue>(create);
  static ParameterizeRequest_ParametersValue? _defaultInstance;

  /// The sub-package name for this sub-schema parameterization.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// The sub-package version for this sub-schema parameterization.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  /// The embedded value from the sub-package.
  @$pb.TagNumber(3)
  $core.List<$core.int> get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);
}

enum ParameterizeRequest_Parameters { args, value, notSet }

/// `ParameterizeRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.Parameterize) call. A
/// `ParameterizeRequest` may contain either:
///
/// * a string array (`ParametersArgs`), intended to represent a set of command-line arguments so as to support
///   instantiating a parameterized provider from a command-line invocation (e.g. to generate an SDK).
/// * a byte array accompanied by a name and version (`ParametersValue`), intended to represent a parameter embedded in a
///   previously generated SDK.
///
/// Embedding parameter values in SDKs allows programs to consume parameterized providers without needing to know the
/// details of the parameterization. Allowing the representation embedded into an SDK to differ from that supplied on the
/// command-line permits providers to implement optimizations for the common, fast-path case (program execution), such as
/// embedding a generated schema as opposed to generating it on-demand for each resource registration.
class ParameterizeRequest extends $pb.GeneratedMessage {
  factory ParameterizeRequest({
    ParameterizeRequest_ParametersArgs? args,
    ParameterizeRequest_ParametersValue? value,
  }) {
    final result = create();
    if (args != null) result.args = args;
    if (value != null) result.value = value;
    return result;
  }

  ParameterizeRequest._();

  factory ParameterizeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ParameterizeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ParameterizeRequest_Parameters>
      _ParameterizeRequest_ParametersByTag = {
    1: ParameterizeRequest_Parameters.args,
    2: ParameterizeRequest_Parameters.value,
    0: ParameterizeRequest_Parameters.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ParameterizeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ParameterizeRequest_ParametersArgs>(1, _omitFieldNames ? '' : 'args',
        subBuilder: ParameterizeRequest_ParametersArgs.create)
    ..aOM<ParameterizeRequest_ParametersValue>(
        2, _omitFieldNames ? '' : 'value',
        subBuilder: ParameterizeRequest_ParametersValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ParameterizeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ParameterizeRequest copyWith(void Function(ParameterizeRequest) updates) =>
      super.copyWith((message) => updates(message as ParameterizeRequest))
          as ParameterizeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest create() => ParameterizeRequest._();
  @$core.override
  ParameterizeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ParameterizeRequest>(create);
  static ParameterizeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  ParameterizeRequest_Parameters whichParameters() =>
      _ParameterizeRequest_ParametersByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearParameters() => $_clearField($_whichOneof(0));

  /// Arguments from the command line.
  @$pb.TagNumber(1)
  ParameterizeRequest_ParametersArgs get args => $_getN(0);
  @$pb.TagNumber(1)
  set args(ParameterizeRequest_ParametersArgs value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasArgs() => $_has(0);
  @$pb.TagNumber(1)
  void clearArgs() => $_clearField(1);
  @$pb.TagNumber(1)
  ParameterizeRequest_ParametersArgs ensureArgs() => $_ensure(0);

  /// Values from a generated SDK.
  @$pb.TagNumber(2)
  ParameterizeRequest_ParametersValue get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(ParameterizeRequest_ParametersValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
  @$pb.TagNumber(2)
  ParameterizeRequest_ParametersValue ensureValue() => $_ensure(1);
}

/// `ParameterizeResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.Parameterize) call. It
/// contains a name and version that can be used to identify the sub-package that now exists as a result of
/// parameterization.
class ParameterizeResponse extends $pb.GeneratedMessage {
  factory ParameterizeResponse({
    $core.String? name,
    $core.String? version,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    return result;
  }

  ParameterizeResponse._();

  factory ParameterizeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ParameterizeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ParameterizeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ParameterizeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ParameterizeResponse copyWith(void Function(ParameterizeResponse) updates) =>
      super.copyWith((message) => updates(message as ParameterizeResponse))
          as ParameterizeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParameterizeResponse create() => ParameterizeResponse._();
  @$core.override
  ParameterizeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ParameterizeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ParameterizeResponse>(create);
  static ParameterizeResponse? _defaultInstance;

  /// The name of the sub-package parameterized.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// The version of the sub-package parameterized.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
}

class GetSchemaRequest extends $pb.GeneratedMessage {
  factory GetSchemaRequest({
    $core.int? version,
    $core.String? subpackageName,
    $core.String? subpackageVersion,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (subpackageName != null) result.subpackageName = subpackageName;
    if (subpackageVersion != null) result.subpackageVersion = subpackageVersion;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'subpackageName')
    ..aOS(3, _omitFieldNames ? '' : 'subpackageVersion')
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

  /// the schema version.
  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  /// the name of the sub-package to lookup
  @$pb.TagNumber(2)
  $core.String get subpackageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set subpackageName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubpackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubpackageName() => $_clearField(2);

  /// the version of the sub-package to lookup
  @$pb.TagNumber(3)
  $core.String get subpackageVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set subpackageVersion($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubpackageVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubpackageVersion() => $_clearField(3);
}

class GetSchemaResponse extends $pb.GeneratedMessage {
  factory GetSchemaResponse({
    $core.String? schema,
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'schema')
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

  @$pb.TagNumber(1)
  $core.String get schema => $_getSZ(0);
  @$pb.TagNumber(1)
  set schema($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => $_clearField(1);
}

/// `ConfigureRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.Configure) call. Requests
/// include both provider-specific inputs (`variables` or `args`) and provider-agnostic ("protocol") configuration
/// (`acceptSecrets`, `acceptResources`, and so on).
class ConfigureRequest extends $pb.GeneratedMessage {
  factory ConfigureRequest({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? variables,
    $3.Struct? args,
    $core.bool? acceptSecrets,
    $core.bool? acceptResources,
    $core.bool? sendsOldInputs,
    $core.bool? sendsOldInputsToDelete,
    $core.String? id,
    $core.String? urn,
    $core.String? name,
    $core.String? type,
  }) {
    final result = create();
    if (variables != null) result.variables.addEntries(variables);
    if (args != null) result.args = args;
    if (acceptSecrets != null) result.acceptSecrets = acceptSecrets;
    if (acceptResources != null) result.acceptResources = acceptResources;
    if (sendsOldInputs != null) result.sendsOldInputs = sendsOldInputs;
    if (sendsOldInputsToDelete != null)
      result.sendsOldInputsToDelete = sendsOldInputsToDelete;
    if (id != null) result.id = id;
    if (urn != null) result.urn = urn;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    return result;
  }

  ConfigureRequest._();

  factory ConfigureRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigureRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'variables',
        entryClassName: 'ConfigureRequest.VariablesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $3.Struct.create)
    ..aOB(3, _omitFieldNames ? '' : 'acceptSecrets', protoName: 'acceptSecrets')
    ..aOB(4, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..aOB(5, _omitFieldNames ? '' : 'sendsOldInputs')
    ..aOB(6, _omitFieldNames ? '' : 'sendsOldInputsToDelete')
    ..aOS(7, _omitFieldNames ? '' : 'id')
    ..aOS(8, _omitFieldNames ? '' : 'urn')
    ..aOS(9, _omitFieldNames ? '' : 'name')
    ..aOS(10, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureRequest copyWith(void Function(ConfigureRequest) updates) =>
      super.copyWith((message) => updates(message as ConfigureRequest))
          as ConfigureRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureRequest create() => ConfigureRequest._();
  @$core.override
  ConfigureRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConfigureRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureRequest>(create);
  static ConfigureRequest? _defaultInstance;

  /// :::{warning}
  /// `variables` is deprecated; `args` should be used instead wherever possible.
  /// :::
  ///
  /// A map of input properties for the provider. Compound values, such as nested objects, should be JSON encoded so
  /// that they too can be passed as strings. For instance, the following configuration:
  ///
  /// ```
  /// {
  ///   "a": 42,
  ///   "b": {
  ///     "c": "hello",
  ///     "d": true
  ///   }
  /// }
  /// ```
  ///
  /// should be encoded as:
  ///
  /// ```
  /// {
  ///   "a": "42",
  ///   "b": "{\"c\":\"hello\",\"d\":true}"
  /// }
  /// ```
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get variables => $_getMap(0);

  /// A map of input properties for the provider.
  ///
  /// :::{warning}
  /// `args` may include secrets. Because `ConfigureRequest` is sent before [](pulumirpc.ConfigureResponse) can specify
  /// whether or not the provider accepts secrets in general, providers *must* handle secrets if they appear in `args`.
  /// :::
  @$pb.TagNumber(2)
  $3.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureArgs() => $_ensure(1);

  /// True if and only if the caller supports secrets. If true, operations should return strongly typed secrets if the
  /// provider supports them also. *Must* be true if the caller has previously called
  /// [](pulumirpc.ResourceProvider.Handshake).
  @$pb.TagNumber(3)
  $core.bool get acceptSecrets => $_getBF(2);
  @$pb.TagNumber(3)
  set acceptSecrets($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAcceptSecrets() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcceptSecrets() => $_clearField(3);

  /// True if and only if the caller supports strongly typed resources. If true, operations should return resources as
  /// strongly typed values if the provider supports them also. *Must* be true if the caller has previously called
  /// [](pulumirpc.ResourceProvider.Handshake).
  @$pb.TagNumber(4)
  $core.bool get acceptResources => $_getBF(3);
  @$pb.TagNumber(4)
  set acceptResources($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAcceptResources() => $_has(3);
  @$pb.TagNumber(4)
  void clearAcceptResources() => $_clearField(4);

  /// True if and only if the caller supports sending old inputs as part of [](pulumirpc.ResourceProvider.Diff) and
  /// [](pulumirpc.ResourceProvider.Update) calls. If true, the provider should expect these fields to be populated in
  /// these calls. *Must* be true if the caller has previously called [](pulumirpc.ResourceProvider.Handshake).
  @$pb.TagNumber(5)
  $core.bool get sendsOldInputs => $_getBF(4);
  @$pb.TagNumber(5)
  set sendsOldInputs($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSendsOldInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearSendsOldInputs() => $_clearField(5);

  /// True if and only if the caller supports sending old inputs and outputs as part of
  /// [](pulumirpc.ResourceProvider.Delete) calls. If true, the provider should expect these fields to be populated in
  /// these calls. *Must* be true if the caller has previously called [](pulumirpc.ResourceProvider.Handshake).
  @$pb.TagNumber(6)
  $core.bool get sendsOldInputsToDelete => $_getBF(5);
  @$pb.TagNumber(6)
  set sendsOldInputsToDelete($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSendsOldInputsToDelete() => $_has(5);
  @$pb.TagNumber(6)
  void clearSendsOldInputsToDelete() => $_clearField(6);

  /// The ID of the provider being configured. N.B. This will be null if configure_with_urn was false in
  /// Handshake.
  @$pb.TagNumber(7)
  $core.String get id => $_getSZ(6);
  @$pb.TagNumber(7)
  set id($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasId() => $_has(6);
  @$pb.TagNumber(7)
  void clearId() => $_clearField(7);

  /// The URN of the provider being configured. N.B. This will be null if configure_with_urn was false in
  /// Handshake.
  @$pb.TagNumber(8)
  $core.String get urn => $_getSZ(7);
  @$pb.TagNumber(8)
  set urn($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasUrn() => $_has(7);
  @$pb.TagNumber(8)
  void clearUrn() => $_clearField(8);

  /// The name of the provider being configured. This must match the name specified by the `urn` field, and
  /// is passed so that providers do not have to implement URN parsing in order to extract the name of the
  /// provider.  N.B. This will be null if configure_with_urn was false in Handshake.
  @$pb.TagNumber(9)
  $core.String get name => $_getSZ(8);
  @$pb.TagNumber(9)
  set name($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasName() => $_has(8);
  @$pb.TagNumber(9)
  void clearName() => $_clearField(9);

  /// The type of the provider being configured. This must match the type specified by the `urn` field, and
  /// is passed so that providers do not have to implement URN parsing in order to extract the type of the
  /// provider. N.B. This will be null if configure_with_urn was false in Handshake.
  @$pb.TagNumber(10)
  $core.String get type => $_getSZ(9);
  @$pb.TagNumber(10)
  set type($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasType() => $_has(9);
  @$pb.TagNumber(10)
  void clearType() => $_clearField(10);
}

/// `ConfigureResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.Configure) call. Its primary
/// purpose is to communicate features that the provider supports back to the caller.
class ConfigureResponse extends $pb.GeneratedMessage {
  factory ConfigureResponse({
    $core.bool? acceptSecrets,
    $core.bool? supportsPreview,
    $core.bool? acceptResources,
    $core.bool? acceptOutputs,
    $core.bool? supportsAutonamingConfiguration,
  }) {
    final result = create();
    if (acceptSecrets != null) result.acceptSecrets = acceptSecrets;
    if (supportsPreview != null) result.supportsPreview = supportsPreview;
    if (acceptResources != null) result.acceptResources = acceptResources;
    if (acceptOutputs != null) result.acceptOutputs = acceptOutputs;
    if (supportsAutonamingConfiguration != null)
      result.supportsAutonamingConfiguration = supportsAutonamingConfiguration;
    return result;
  }

  ConfigureResponse._();

  factory ConfigureResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigureResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'acceptSecrets', protoName: 'acceptSecrets')
    ..aOB(2, _omitFieldNames ? '' : 'supportsPreview',
        protoName: 'supportsPreview')
    ..aOB(3, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..aOB(4, _omitFieldNames ? '' : 'acceptOutputs', protoName: 'acceptOutputs')
    ..aOB(5, _omitFieldNames ? '' : 'supportsAutonamingConfiguration')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureResponse copyWith(void Function(ConfigureResponse) updates) =>
      super.copyWith((message) => updates(message as ConfigureResponse))
          as ConfigureResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureResponse create() => ConfigureResponse._();
  @$core.override
  ConfigureResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConfigureResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureResponse>(create);
  static ConfigureResponse? _defaultInstance;

  /// True if and only if the provider supports secrets. If true, the caller should pass secrets as strongly typed
  /// values to the provider. *Must* match the value returned in response to [](pulumirpc.ResourceProvider.Handshake)
  /// if the provider supports handshaking.
  @$pb.TagNumber(1)
  $core.bool get acceptSecrets => $_getBF(0);
  @$pb.TagNumber(1)
  set acceptSecrets($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAcceptSecrets() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptSecrets() => $_clearField(1);

  /// True if and only if the provider supports the `preview` field on [](pulumirpc.ResourceProvider.Create) and
  /// [](pulumirpc.ResourceProvider.Update) calls. If true, the engine should invoke these calls with `preview` set to
  /// `true` during previews. *Must* be true if the provider implements [](pulumirpc.ResourceProvider.Handshake).
  @$pb.TagNumber(2)
  $core.bool get supportsPreview => $_getBF(1);
  @$pb.TagNumber(2)
  set supportsPreview($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupportsPreview() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportsPreview() => $_clearField(2);

  /// True if and only if the provider supports strongly typed resources. If true, the caller should pass resources as
  /// strongly typed values to the provider. *Must* match the value returned in response to
  /// [](pulumirpc.ResourceProvider.Handshake) if the provider supports handshaking.
  @$pb.TagNumber(3)
  $core.bool get acceptResources => $_getBF(2);
  @$pb.TagNumber(3)
  set acceptResources($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAcceptResources() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcceptResources() => $_clearField(3);

  /// True if and only if the provider supports output values as inputs. If true, the engine should pass output values
  /// to the provider where possible. *Must* match the value returned in response to
  /// [](pulumirpc.ResourceProvider.Handshake) if the provider supports handshaking.
  @$pb.TagNumber(4)
  $core.bool get acceptOutputs => $_getBF(3);
  @$pb.TagNumber(4)
  set acceptOutputs($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAcceptOutputs() => $_has(3);
  @$pb.TagNumber(4)
  void clearAcceptOutputs() => $_clearField(4);

  /// True if the provider accepts and respects autonaming configuration that the engine provides on behalf of the
  /// user. *Must* match the value returned in response to [](pulumirpc.ResourceProvider.Handshake) if the provider
  /// supports handshaking.
  @$pb.TagNumber(5)
  $core.bool get supportsAutonamingConfiguration => $_getBF(4);
  @$pb.TagNumber(5)
  set supportsAutonamingConfiguration($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSupportsAutonamingConfiguration() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupportsAutonamingConfiguration() => $_clearField(5);
}

/// The type of key-value pairs representing keys that are missing from a [](pulumirpc.ResourceProvider.Configure)
/// call.
class ConfigureErrorMissingKeys_MissingKey extends $pb.GeneratedMessage {
  factory ConfigureErrorMissingKeys_MissingKey({
    $core.String? name,
    $core.String? description,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    return result;
  }

  ConfigureErrorMissingKeys_MissingKey._();

  factory ConfigureErrorMissingKeys_MissingKey.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigureErrorMissingKeys_MissingKey.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureErrorMissingKeys.MissingKey',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureErrorMissingKeys_MissingKey clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureErrorMissingKeys_MissingKey copyWith(
          void Function(ConfigureErrorMissingKeys_MissingKey) updates) =>
      super.copyWith((message) =>
              updates(message as ConfigureErrorMissingKeys_MissingKey))
          as ConfigureErrorMissingKeys_MissingKey;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureErrorMissingKeys_MissingKey create() =>
      ConfigureErrorMissingKeys_MissingKey._();
  @$core.override
  ConfigureErrorMissingKeys_MissingKey createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConfigureErrorMissingKeys_MissingKey getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConfigureErrorMissingKeys_MissingKey>(create);
  static ConfigureErrorMissingKeys_MissingKey? _defaultInstance;

  /// The name of the missing configuration key.
  ///
  /// :::{note}
  /// This should be the *Pulumi name* of the missing key, and not any provider-internal or upstream name. Names
  /// that differ between Pulumi and an upstream provider should be translated prior to being returned.
  /// :::
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// A description of the missing config key, as reported by the provider.
  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);
}

/// `ConfigureErrorMissingKeys` is the type of error details that may be sent in response to a
/// [](pulumirpc.ResourceProvider.Configure) call when required configuration keys are missing.
class ConfigureErrorMissingKeys extends $pb.GeneratedMessage {
  factory ConfigureErrorMissingKeys({
    $core.Iterable<ConfigureErrorMissingKeys_MissingKey>? missingKeys,
  }) {
    final result = create();
    if (missingKeys != null) result.missingKeys.addAll(missingKeys);
    return result;
  }

  ConfigureErrorMissingKeys._();

  factory ConfigureErrorMissingKeys.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigureErrorMissingKeys.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureErrorMissingKeys',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<ConfigureErrorMissingKeys_MissingKey>(
        1, _omitFieldNames ? '' : 'missingKeys',
        protoName: 'missingKeys',
        subBuilder: ConfigureErrorMissingKeys_MissingKey.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureErrorMissingKeys clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureErrorMissingKeys copyWith(
          void Function(ConfigureErrorMissingKeys) updates) =>
      super.copyWith((message) => updates(message as ConfigureErrorMissingKeys))
          as ConfigureErrorMissingKeys;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureErrorMissingKeys create() => ConfigureErrorMissingKeys._();
  @$core.override
  ConfigureErrorMissingKeys createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConfigureErrorMissingKeys getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureErrorMissingKeys>(create);
  static ConfigureErrorMissingKeys? _defaultInstance;

  /// A list of required configuration keys that were not supplied.
  @$pb.TagNumber(1)
  $pb.PbList<ConfigureErrorMissingKeys_MissingKey> get missingKeys =>
      $_getList(0);
}

class InvokeRequest extends $pb.GeneratedMessage {
  factory InvokeRequest({
    $core.String? tok,
    $3.Struct? args,
    $core.bool? preview,
  }) {
    final result = create();
    if (tok != null) result.tok = tok;
    if (args != null) result.args = args;
    if (preview != null) result.preview = preview;
    return result;
  }

  InvokeRequest._();

  factory InvokeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InvokeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InvokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tok')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $3.Struct.create)
    ..aOB(7, _omitFieldNames ? '' : 'preview')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InvokeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InvokeRequest copyWith(void Function(InvokeRequest) updates) =>
      super.copyWith((message) => updates(message as InvokeRequest))
          as InvokeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvokeRequest create() => InvokeRequest._();
  @$core.override
  InvokeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeRequest>(create);
  static InvokeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tok => $_getSZ(0);
  @$pb.TagNumber(1)
  set tok($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTok() => $_has(0);
  @$pb.TagNumber(1)
  void clearTok() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureArgs() => $_ensure(1);

  /// This is only set if `HandshakeRequest.invoke_with_preview` was true. If this is true then the engine is currently
  /// running a preview deployment.
  @$pb.TagNumber(7)
  $core.bool get preview => $_getBF(2);
  @$pb.TagNumber(7)
  set preview($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(7)
  $core.bool hasPreview() => $_has(2);
  @$pb.TagNumber(7)
  void clearPreview() => $_clearField(7);
}

class InvokeResponse extends $pb.GeneratedMessage {
  factory InvokeResponse({
    $3.Struct? return_1,
    $core.Iterable<CheckFailure>? failures,
  }) {
    final result = create();
    if (return_1 != null) result.return_1 = return_1;
    if (failures != null) result.failures.addAll(failures);
    return result;
  }

  InvokeResponse._();

  factory InvokeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InvokeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InvokeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$3.Struct>(1, _omitFieldNames ? '' : 'return',
        subBuilder: $3.Struct.create)
    ..pPM<CheckFailure>(2, _omitFieldNames ? '' : 'failures',
        subBuilder: CheckFailure.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InvokeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InvokeResponse copyWith(void Function(InvokeResponse) updates) =>
      super.copyWith((message) => updates(message as InvokeResponse))
          as InvokeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvokeResponse create() => InvokeResponse._();
  @$core.override
  InvokeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InvokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeResponse>(create);
  static InvokeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Struct get return_1 => $_getN(0);
  @$pb.TagNumber(1)
  set return_1($3.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasReturn_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturn_1() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Struct ensureReturn_1() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<CheckFailure> get failures => $_getList(1);
}

/// ArgumentDependencies describes the resources that a particular argument depends on.
class CallRequest_ArgumentDependencies extends $pb.GeneratedMessage {
  factory CallRequest_ArgumentDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final result = create();
    if (urns != null) result.urns.addAll(urns);
    return result;
  }

  CallRequest_ArgumentDependencies._();

  factory CallRequest_ArgumentDependencies.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CallRequest_ArgumentDependencies.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallRequest.ArgumentDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallRequest_ArgumentDependencies clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallRequest_ArgumentDependencies copyWith(
          void Function(CallRequest_ArgumentDependencies) updates) =>
      super.copyWith(
              (message) => updates(message as CallRequest_ArgumentDependencies))
          as CallRequest_ArgumentDependencies;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallRequest_ArgumentDependencies create() =>
      CallRequest_ArgumentDependencies._();
  @$core.override
  CallRequest_ArgumentDependencies createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CallRequest_ArgumentDependencies getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallRequest_ArgumentDependencies>(
          create);
  static CallRequest_ArgumentDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get urns => $_getList(0);
}

class CallRequest extends $pb.GeneratedMessage {
  factory CallRequest({
    $core.String? tok,
    $3.Struct? args,
    $core.Iterable<
            $core.MapEntry<$core.String, CallRequest_ArgumentDependencies>>?
        argDependencies,
    $core.String? project,
    $core.String? stack,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? config,
    $core.Iterable<$core.String>? configSecretKeys,
    $core.bool? dryRun,
    $core.int? parallel,
    $core.String? monitorEndpoint,
    $core.String? organization,
    $core.bool? acceptsOutputValues,
    $core.String? stackTraceHandle,
  }) {
    final result = create();
    if (tok != null) result.tok = tok;
    if (args != null) result.args = args;
    if (argDependencies != null)
      result.argDependencies.addEntries(argDependencies);
    if (project != null) result.project = project;
    if (stack != null) result.stack = stack;
    if (config != null) result.config.addEntries(config);
    if (configSecretKeys != null)
      result.configSecretKeys.addAll(configSecretKeys);
    if (dryRun != null) result.dryRun = dryRun;
    if (parallel != null) result.parallel = parallel;
    if (monitorEndpoint != null) result.monitorEndpoint = monitorEndpoint;
    if (organization != null) result.organization = organization;
    if (acceptsOutputValues != null)
      result.acceptsOutputValues = acceptsOutputValues;
    if (stackTraceHandle != null) result.stackTraceHandle = stackTraceHandle;
    return result;
  }

  CallRequest._();

  factory CallRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CallRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tok')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $3.Struct.create)
    ..m<$core.String, CallRequest_ArgumentDependencies>(
        3, _omitFieldNames ? '' : 'argDependencies',
        protoName: 'argDependencies',
        entryClassName: 'CallRequest.ArgDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: CallRequest_ArgumentDependencies.create,
        valueDefaultOrMaker: CallRequest_ArgumentDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(6, _omitFieldNames ? '' : 'project')
    ..aOS(7, _omitFieldNames ? '' : 'stack')
    ..m<$core.String, $core.String>(8, _omitFieldNames ? '' : 'config',
        entryClassName: 'CallRequest.ConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPS(9, _omitFieldNames ? '' : 'configSecretKeys',
        protoName: 'configSecretKeys')
    ..aOB(10, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aI(11, _omitFieldNames ? '' : 'parallel')
    ..aOS(12, _omitFieldNames ? '' : 'monitorEndpoint',
        protoName: 'monitorEndpoint')
    ..aOS(14, _omitFieldNames ? '' : 'organization')
    ..aOB(17, _omitFieldNames ? '' : 'acceptsOutputValues')
    ..aOS(18, _omitFieldNames ? '' : 'stackTraceHandle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallRequest copyWith(void Function(CallRequest) updates) =>
      super.copyWith((message) => updates(message as CallRequest))
          as CallRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallRequest create() => CallRequest._();
  @$core.override
  CallRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CallRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallRequest>(create);
  static CallRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tok => $_getSZ(0);
  @$pb.TagNumber(1)
  set tok($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTok() => $_has(0);
  @$pb.TagNumber(1)
  void clearTok() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureArgs() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, CallRequest_ArgumentDependencies>
      get argDependencies => $_getMap(2);

  @$pb.TagNumber(6)
  $core.String get project => $_getSZ(3);
  @$pb.TagNumber(6)
  set project($core.String value) => $_setString(3, value);
  @$pb.TagNumber(6)
  $core.bool hasProject() => $_has(3);
  @$pb.TagNumber(6)
  void clearProject() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get stack => $_getSZ(4);
  @$pb.TagNumber(7)
  set stack($core.String value) => $_setString(4, value);
  @$pb.TagNumber(7)
  $core.bool hasStack() => $_has(4);
  @$pb.TagNumber(7)
  void clearStack() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbMap<$core.String, $core.String> get config => $_getMap(5);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get configSecretKeys => $_getList(6);

  @$pb.TagNumber(10)
  $core.bool get dryRun => $_getBF(7);
  @$pb.TagNumber(10)
  set dryRun($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(10)
  $core.bool hasDryRun() => $_has(7);
  @$pb.TagNumber(10)
  void clearDryRun() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get parallel => $_getIZ(8);
  @$pb.TagNumber(11)
  set parallel($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(11)
  $core.bool hasParallel() => $_has(8);
  @$pb.TagNumber(11)
  void clearParallel() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get monitorEndpoint => $_getSZ(9);
  @$pb.TagNumber(12)
  set monitorEndpoint($core.String value) => $_setString(9, value);
  @$pb.TagNumber(12)
  $core.bool hasMonitorEndpoint() => $_has(9);
  @$pb.TagNumber(12)
  void clearMonitorEndpoint() => $_clearField(12);

  @$pb.TagNumber(14)
  $core.String get organization => $_getSZ(10);
  @$pb.TagNumber(14)
  set organization($core.String value) => $_setString(10, value);
  @$pb.TagNumber(14)
  $core.bool hasOrganization() => $_has(10);
  @$pb.TagNumber(14)
  void clearOrganization() => $_clearField(14);

  @$pb.TagNumber(17)
  $core.bool get acceptsOutputValues => $_getBF(11);
  @$pb.TagNumber(17)
  set acceptsOutputValues($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(17)
  $core.bool hasAcceptsOutputValues() => $_has(11);
  @$pb.TagNumber(17)
  void clearAcceptsOutputValues() => $_clearField(17);

  /// The stack trace handle for the call. Supports stitching stack traces together across plugins.
  @$pb.TagNumber(18)
  $core.String get stackTraceHandle => $_getSZ(12);
  @$pb.TagNumber(18)
  set stackTraceHandle($core.String value) => $_setString(12, value);
  @$pb.TagNumber(18)
  $core.bool hasStackTraceHandle() => $_has(12);
  @$pb.TagNumber(18)
  void clearStackTraceHandle() => $_clearField(18);
}

/// ReturnDependencies describes the resources that a particular return value depends on.
class CallResponse_ReturnDependencies extends $pb.GeneratedMessage {
  factory CallResponse_ReturnDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final result = create();
    if (urns != null) result.urns.addAll(urns);
    return result;
  }

  CallResponse_ReturnDependencies._();

  factory CallResponse_ReturnDependencies.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CallResponse_ReturnDependencies.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallResponse.ReturnDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallResponse_ReturnDependencies clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallResponse_ReturnDependencies copyWith(
          void Function(CallResponse_ReturnDependencies) updates) =>
      super.copyWith(
              (message) => updates(message as CallResponse_ReturnDependencies))
          as CallResponse_ReturnDependencies;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallResponse_ReturnDependencies create() =>
      CallResponse_ReturnDependencies._();
  @$core.override
  CallResponse_ReturnDependencies createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CallResponse_ReturnDependencies getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallResponse_ReturnDependencies>(
          create);
  static CallResponse_ReturnDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get urns => $_getList(0);
}

class CallResponse extends $pb.GeneratedMessage {
  factory CallResponse({
    $3.Struct? return_1,
    $core.Iterable<
            $core.MapEntry<$core.String, CallResponse_ReturnDependencies>>?
        returnDependencies,
    $core.Iterable<CheckFailure>? failures,
  }) {
    final result = create();
    if (return_1 != null) result.return_1 = return_1;
    if (returnDependencies != null)
      result.returnDependencies.addEntries(returnDependencies);
    if (failures != null) result.failures.addAll(failures);
    return result;
  }

  CallResponse._();

  factory CallResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CallResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$3.Struct>(1, _omitFieldNames ? '' : 'return',
        subBuilder: $3.Struct.create)
    ..m<$core.String, CallResponse_ReturnDependencies>(
        2, _omitFieldNames ? '' : 'returnDependencies',
        protoName: 'returnDependencies',
        entryClassName: 'CallResponse.ReturnDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: CallResponse_ReturnDependencies.create,
        valueDefaultOrMaker: CallResponse_ReturnDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPM<CheckFailure>(3, _omitFieldNames ? '' : 'failures',
        subBuilder: CheckFailure.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallResponse copyWith(void Function(CallResponse) updates) =>
      super.copyWith((message) => updates(message as CallResponse))
          as CallResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallResponse create() => CallResponse._();
  @$core.override
  CallResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CallResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallResponse>(create);
  static CallResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Struct get return_1 => $_getN(0);
  @$pb.TagNumber(1)
  set return_1($3.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasReturn_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturn_1() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Struct ensureReturn_1() => $_ensure(0);

  /// a map from return value keys to the dependencies of the return value.
  ///
  /// returnDependencies will be augmented by the set of dependencies specified in return
  /// via output property values.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, CallResponse_ReturnDependencies>
      get returnDependencies => $_getMap(1);

  @$pb.TagNumber(3)
  $pb.PbList<CheckFailure> get failures => $_getList(2);
}

/// Configuration for automatic resource naming behavior. This structure contains fields that control how the provider
/// handles resource names, including proposed names and naming modes.
class CheckRequest_AutonamingOptions extends $pb.GeneratedMessage {
  factory CheckRequest_AutonamingOptions({
    $core.String? proposedName,
    CheckRequest_AutonamingOptions_Mode? mode,
  }) {
    final result = create();
    if (proposedName != null) result.proposedName = proposedName;
    if (mode != null) result.mode = mode;
    return result;
  }

  CheckRequest_AutonamingOptions._();

  factory CheckRequest_AutonamingOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckRequest_AutonamingOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckRequest.AutonamingOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'proposedName')
    ..aE<CheckRequest_AutonamingOptions_Mode>(2, _omitFieldNames ? '' : 'mode',
        enumValues: CheckRequest_AutonamingOptions_Mode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckRequest_AutonamingOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckRequest_AutonamingOptions copyWith(
          void Function(CheckRequest_AutonamingOptions) updates) =>
      super.copyWith(
              (message) => updates(message as CheckRequest_AutonamingOptions))
          as CheckRequest_AutonamingOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckRequest_AutonamingOptions create() =>
      CheckRequest_AutonamingOptions._();
  @$core.override
  CheckRequest_AutonamingOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CheckRequest_AutonamingOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckRequest_AutonamingOptions>(create);
  static CheckRequest_AutonamingOptions? _defaultInstance;

  /// The proposed name for the resource being checked. This may be used by the provider as a suggestion
  /// for the final resource name, depending on the specified mode.
  @$pb.TagNumber(1)
  $core.String get proposedName => $_getSZ(0);
  @$pb.TagNumber(1)
  set proposedName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProposedName() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposedName() => $_clearField(1);

  @$pb.TagNumber(2)
  CheckRequest_AutonamingOptions_Mode get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(CheckRequest_AutonamingOptions_Mode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);
}

/// `CheckRequest` is the type of requests sent as part of [](pulumirpc.ResourceProvider.CheckConfig) and
/// [](pulumirpc.ResourceProvider.Check) calls. A `CheckRequest` primarily captures the URN and inputs of the resource
/// being checked. In the case of [](pulumirpc.ResourceProvider.CheckConfig), the URN will be the URN of the provider
/// resource being constructed, which may or may not be a [default provider](default-providers), and the inputs will be
/// the provider configuration.
class CheckRequest extends $pb.GeneratedMessage {
  factory CheckRequest({
    $core.String? urn,
    $3.Struct? olds,
    $3.Struct? news,
    $core.List<$core.int>? randomSeed,
    $core.String? name,
    $core.String? type,
    CheckRequest_AutonamingOptions? autonaming,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    if (olds != null) result.olds = olds;
    if (news != null) result.news = news;
    if (randomSeed != null) result.randomSeed = randomSeed;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (autonaming != null) result.autonaming = autonaming;
    return result;
  }

  CheckRequest._();

  factory CheckRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'olds',
        subBuilder: $3.Struct.create)
    ..aOM<$3.Struct>(3, _omitFieldNames ? '' : 'news',
        subBuilder: $3.Struct.create)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'randomSeed', $pb.PbFieldType.OY,
        protoName: 'randomSeed')
    ..aOS(6, _omitFieldNames ? '' : 'name')
    ..aOS(7, _omitFieldNames ? '' : 'type')
    ..aOM<CheckRequest_AutonamingOptions>(
        8, _omitFieldNames ? '' : 'autonaming',
        subBuilder: CheckRequest_AutonamingOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckRequest copyWith(void Function(CheckRequest) updates) =>
      super.copyWith((message) => updates(message as CheckRequest))
          as CheckRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckRequest create() => CheckRequest._();
  @$core.override
  CheckRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CheckRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckRequest>(create);
  static CheckRequest? _defaultInstance;

  /// The URN of the resource whose inputs are being checked. In the case of
  /// [](pulumirpc.ResourceProvider.CheckConfig), this will be the URN of the provider resource being constructed,
  /// which may or may not be a [default provider](default-providers).
  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  /// The old input properties or configuration for the resource, if any.
  @$pb.TagNumber(2)
  $3.Struct get olds => $_getN(1);
  @$pb.TagNumber(2)
  set olds($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOlds() => $_has(1);
  @$pb.TagNumber(2)
  void clearOlds() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureOlds() => $_ensure(1);

  /// The new input properties or configuration for the resource, if any.
  ///
  /// :::{note}
  /// If this resource has been specified with the
  /// [`ignoreChanges`](https://www.pulumi.com/docs/concepts/options/ignorechanges/), then the values in `news` may
  /// differ from those written in the Pulumi program registering this resource. In such cases, the caller (e.g. the
  /// Pulumi engine) is expected to preprocess the `news` value by replacing every property matched by `ignoreChanges`
  /// with its corresponding `olds` value (effectively ignoring the change).
  /// :::
  @$pb.TagNumber(3)
  $3.Struct get news => $_getN(2);
  @$pb.TagNumber(3)
  set news($3.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasNews() => $_has(2);
  @$pb.TagNumber(3)
  void clearNews() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Struct ensureNews() => $_ensure(2);

  /// A random but deterministically computed hash, intended to be used for generating globally unique names.
  @$pb.TagNumber(5)
  $core.List<$core.int> get randomSeed => $_getN(3);
  @$pb.TagNumber(5)
  set randomSeed($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(5)
  $core.bool hasRandomSeed() => $_has(3);
  @$pb.TagNumber(5)
  void clearRandomSeed() => $_clearField(5);

  /// The name of the resource being checked. This must match the name specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the name of the resource.
  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(6)
  set name($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(6)
  void clearName() => $_clearField(6);

  /// The type of the resource being checked. This must match the type specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the type of the resource.
  @$pb.TagNumber(7)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(7)
  set type($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(7)
  void clearType() => $_clearField(7);

  @$pb.TagNumber(8)
  CheckRequest_AutonamingOptions get autonaming => $_getN(6);
  @$pb.TagNumber(8)
  set autonaming(CheckRequest_AutonamingOptions value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAutonaming() => $_has(6);
  @$pb.TagNumber(8)
  void clearAutonaming() => $_clearField(8);
  @$pb.TagNumber(8)
  CheckRequest_AutonamingOptions ensureAutonaming() => $_ensure(6);
}

/// `CheckResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.CheckConfig) or
/// [](pulumirpc.ResourceProvider.Check) call. A `CheckResponse` may contain either:
///
/// * a set of checked, known-valid `inputs`. In the case of [](pulumirpc.ResourceProvider.CheckConfig), these may
///   subsequently be passed to [](pulumirpc.ResourceProvider.DiffConfig) and/or
///   [](pulumirpc.ResourceProvider.Configure). In the case of [](pulumirpc.ResourceProvider.Check), these may be passed
///   to any of the supported lifecycle methods that accept provider inputs.
/// * a set of `failures` detailing invalid inputs.
///
/// In cases where the supplied set of inputs is valid, a `CheckResponse` may contain default values that should
/// persisted to Pulumi state and passed to subsequent calls.
class CheckResponse extends $pb.GeneratedMessage {
  factory CheckResponse({
    $3.Struct? inputs,
    $core.Iterable<CheckFailure>? failures,
  }) {
    final result = create();
    if (inputs != null) result.inputs = inputs;
    if (failures != null) result.failures.addAll(failures);
    return result;
  }

  CheckResponse._();

  factory CheckResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$3.Struct>(1, _omitFieldNames ? '' : 'inputs',
        subBuilder: $3.Struct.create)
    ..pPM<CheckFailure>(2, _omitFieldNames ? '' : 'failures',
        subBuilder: CheckFailure.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckResponse copyWith(void Function(CheckResponse) updates) =>
      super.copyWith((message) => updates(message as CheckResponse))
          as CheckResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckResponse create() => CheckResponse._();
  @$core.override
  CheckResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CheckResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckResponse>(create);
  static CheckResponse? _defaultInstance;

  /// A valid, checked set of inputs. May contain defaults.
  @$pb.TagNumber(1)
  $3.Struct get inputs => $_getN(0);
  @$pb.TagNumber(1)
  set inputs($3.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInputs() => $_has(0);
  @$pb.TagNumber(1)
  void clearInputs() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Struct ensureInputs() => $_ensure(0);

  /// Any validation failures that occurred.
  @$pb.TagNumber(2)
  $pb.PbList<CheckFailure> get failures => $_getList(1);
}

/// A `CheckFailure` describes a single validation error that arose as part of a
/// [](pulumirpc.ResourceProvider.CheckConfig) or [](pulumirpc.ResourceProvider.Check) call.
class CheckFailure extends $pb.GeneratedMessage {
  factory CheckFailure({
    $core.String? property,
    $core.String? reason,
  }) {
    final result = create();
    if (property != null) result.property = property;
    if (reason != null) result.reason = reason;
    return result;
  }

  CheckFailure._();

  factory CheckFailure.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckFailure.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckFailure',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'property')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckFailure clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckFailure copyWith(void Function(CheckFailure) updates) =>
      super.copyWith((message) => updates(message as CheckFailure))
          as CheckFailure;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckFailure create() => CheckFailure._();
  @$core.override
  CheckFailure createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CheckFailure getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckFailure>(create);
  static CheckFailure? _defaultInstance;

  /// The input property that failed validation.
  @$pb.TagNumber(1)
  $core.String get property => $_getSZ(0);
  @$pb.TagNumber(1)
  set property($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperty() => $_clearField(1);

  /// The reason that the named property failed validation.
  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

/// `DiffRequest` is the type of requests sent as part of [](pulumirpc.ResourceProvider.DiffConfig) and
/// [](pulumirpc.ResourceProvider.Diff) calls. A `DiffRequest` primarily captures:
///
/// * the URN of the resource whose properties are being compared;
/// * the old and new input properties of the resource; and
/// * the old output properties of the resource.
///
/// In the case of [](pulumirpc.ResourceProvider.DiffConfig), the URN will be the URN of the provider resource being
/// examined, which may or may not be a [default provider](default-providers), and the inputs and outputs will be the
/// provider configuration and state. Inputs supplied to a [](pulumirpc.ResourceProvider.DiffConfig) call should have
/// been previously checked by a call to [](pulumirpc.ResourceProvider.CheckConfig); inputs supplied to a
/// [](pulumirpc.ResourceProvider.Diff) call should have been previously checked by a call to
/// [](pulumirpc.ResourceProvider.Check).
class DiffRequest extends $pb.GeneratedMessage {
  factory DiffRequest({
    $core.String? id,
    $core.String? urn,
    $3.Struct? olds,
    $3.Struct? news,
    $core.Iterable<$core.String>? ignoreChanges,
    $3.Struct? oldInputs,
    $core.String? name,
    $core.String? type,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (urn != null) result.urn = urn;
    if (olds != null) result.olds = olds;
    if (news != null) result.news = news;
    if (ignoreChanges != null) result.ignoreChanges.addAll(ignoreChanges);
    if (oldInputs != null) result.oldInputs = oldInputs;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    return result;
  }

  DiffRequest._();

  factory DiffRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DiffRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiffRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'urn')
    ..aOM<$3.Struct>(3, _omitFieldNames ? '' : 'olds',
        subBuilder: $3.Struct.create)
    ..aOM<$3.Struct>(4, _omitFieldNames ? '' : 'news',
        subBuilder: $3.Struct.create)
    ..pPS(5, _omitFieldNames ? '' : 'ignoreChanges', protoName: 'ignoreChanges')
    ..aOM<$3.Struct>(6, _omitFieldNames ? '' : 'oldInputs',
        subBuilder: $3.Struct.create)
    ..aOS(7, _omitFieldNames ? '' : 'name')
    ..aOS(8, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffRequest copyWith(void Function(DiffRequest) updates) =>
      super.copyWith((message) => updates(message as DiffRequest))
          as DiffRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiffRequest create() => DiffRequest._();
  @$core.override
  DiffRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DiffRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DiffRequest>(create);
  static DiffRequest? _defaultInstance;

  /// The ID of the resource being diffed.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// The URN of the resource being diffed.
  @$pb.TagNumber(2)
  $core.String get urn => $_getSZ(1);
  @$pb.TagNumber(2)
  set urn($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrn() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrn() => $_clearField(2);

  /// The old *output* properties of the resource being diffed.
  @$pb.TagNumber(3)
  $3.Struct get olds => $_getN(2);
  @$pb.TagNumber(3)
  set olds($3.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOlds() => $_has(2);
  @$pb.TagNumber(3)
  void clearOlds() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Struct ensureOlds() => $_ensure(2);

  /// The new *input* properties of the resource being diffed. These should have been validated by an appropriate call
  /// to [](pulumirpc.ResourceProvider.CheckConfig) or [](pulumirpc.ResourceProvider.Check).
  @$pb.TagNumber(4)
  $3.Struct get news => $_getN(3);
  @$pb.TagNumber(4)
  set news($3.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasNews() => $_has(3);
  @$pb.TagNumber(4)
  void clearNews() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Struct ensureNews() => $_ensure(3);

  /// A set of [property paths](property-paths) that should be treated as unchanged.
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get ignoreChanges => $_getList(4);

  /// The old *input* properties of the resource being diffed.
  @$pb.TagNumber(6)
  $3.Struct get oldInputs => $_getN(5);
  @$pb.TagNumber(6)
  set oldInputs($3.Struct value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOldInputs() => $_has(5);
  @$pb.TagNumber(6)
  void clearOldInputs() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.Struct ensureOldInputs() => $_ensure(5);

  /// The name of the resource being diffed. This must match the name specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the name of the resource.
  @$pb.TagNumber(7)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(7)
  set name($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(7)
  void clearName() => $_clearField(7);

  /// The type of the resource being diffed. This must match the type specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the type of the resource.
  @$pb.TagNumber(8)
  $core.String get type => $_getSZ(7);
  @$pb.TagNumber(8)
  set type($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasType() => $_has(7);
  @$pb.TagNumber(8)
  void clearType() => $_clearField(8);
}

/// `PropertyDiff` describes the kind of change that occurred to a property during a diff operation. A `PropertyDiff` may
/// indicate that a property was added, deleted, or updated, and may further indicate that the change requires a
/// replacement.
class PropertyDiff extends $pb.GeneratedMessage {
  factory PropertyDiff({
    PropertyDiff_Kind? kind,
    $core.bool? inputDiff,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (inputDiff != null) result.inputDiff = inputDiff;
    return result;
  }

  PropertyDiff._();

  factory PropertyDiff.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PropertyDiff.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyDiff',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aE<PropertyDiff_Kind>(1, _omitFieldNames ? '' : 'kind',
        enumValues: PropertyDiff_Kind.values)
    ..aOB(2, _omitFieldNames ? '' : 'inputDiff', protoName: 'inputDiff')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyDiff clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyDiff copyWith(void Function(PropertyDiff) updates) =>
      super.copyWith((message) => updates(message as PropertyDiff))
          as PropertyDiff;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyDiff create() => PropertyDiff._();
  @$core.override
  PropertyDiff createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PropertyDiff getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyDiff>(create);
  static PropertyDiff? _defaultInstance;

  /// The kind of diff associated with this property.
  @$pb.TagNumber(1)
  PropertyDiff_Kind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(PropertyDiff_Kind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  /// True if and only if this difference represents one between a pair of old and new inputs, as opposed to a pair of
  /// old and new states.
  @$pb.TagNumber(2)
  $core.bool get inputDiff => $_getBF(1);
  @$pb.TagNumber(2)
  set inputDiff($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasInputDiff() => $_has(1);
  @$pb.TagNumber(2)
  void clearInputDiff() => $_clearField(2);
}

/// `DiffResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.DiffConfig) or
/// [](pulumirpc.ResourceProvider.Diff) call. A `DiffResponse` indicates whether a resource is unchanged, requires
/// updating (that is, can be changed "in place"), or requires replacement (that is, must be destroyed and recreated
/// anew). Legacy implementations may also signal that it is unknown whether there are changes or not.
///
/// `DiffResponse` has evolved since its inception and there are now a number of ways that providers can signal their
/// intent to callers:
///
/// * *Simple diffs* utilise the `changes` field to signal which fields are responsible for a change, and the `replaces`
///   field to further communicate which changes (if any) require a replacement as opposed to an update.
///
/// * *Detailed diffs* are those with `hasDetailedDiff` set, and utilise the `detailedDiff` field to provide a more
///   granular view of the changes that have occurred. Detailed diffs are designed to allow providers to control
///   precisely which field names are displayed as responsible for a change, and to signal more accurately what kind of
///   change occurred (e.g. a field was added, deleted or updated).
///
/// The response must satisfy the following invariants:
///
/// * For each top-level key in `diff` there is at least one matching property path, starting at that key, in `detailedDiff`.
/// * For each entry in `detailedDiff`, its top-level property is in `diff`.
/// * `diff` does not contain duplicates.
/// * `detailedDiff` does not contain duplicate keys.
class DiffResponse extends $pb.GeneratedMessage {
  factory DiffResponse({
    $core.Iterable<$core.String>? replaces,
    $core.Iterable<$core.String>? stables,
    $core.bool? deleteBeforeReplace,
    DiffResponse_DiffChanges? changes,
    $core.Iterable<$core.String>? diffs,
    $core.Iterable<$core.MapEntry<$core.String, PropertyDiff>>? detailedDiff,
    $core.bool? hasDetailedDiff,
  }) {
    final result = create();
    if (replaces != null) result.replaces.addAll(replaces);
    if (stables != null) result.stables.addAll(stables);
    if (deleteBeforeReplace != null)
      result.deleteBeforeReplace = deleteBeforeReplace;
    if (changes != null) result.changes = changes;
    if (diffs != null) result.diffs.addAll(diffs);
    if (detailedDiff != null) result.detailedDiff.addEntries(detailedDiff);
    if (hasDetailedDiff != null) result.hasDetailedDiff = hasDetailedDiff;
    return result;
  }

  DiffResponse._();

  factory DiffResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DiffResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiffResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'replaces')
    ..pPS(2, _omitFieldNames ? '' : 'stables')
    ..aOB(3, _omitFieldNames ? '' : 'deleteBeforeReplace',
        protoName: 'deleteBeforeReplace')
    ..aE<DiffResponse_DiffChanges>(4, _omitFieldNames ? '' : 'changes',
        enumValues: DiffResponse_DiffChanges.values)
    ..pPS(5, _omitFieldNames ? '' : 'diffs')
    ..m<$core.String, PropertyDiff>(6, _omitFieldNames ? '' : 'detailedDiff',
        protoName: 'detailedDiff',
        entryClassName: 'DiffResponse.DetailedDiffEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PropertyDiff.create,
        valueDefaultOrMaker: PropertyDiff.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(7, _omitFieldNames ? '' : 'hasDetailedDiff',
        protoName: 'hasDetailedDiff')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiffResponse copyWith(void Function(DiffResponse) updates) =>
      super.copyWith((message) => updates(message as DiffResponse))
          as DiffResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiffResponse create() => DiffResponse._();
  @$core.override
  DiffResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DiffResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DiffResponse>(create);
  static DiffResponse? _defaultInstance;

  /// A set of properties which have changed and whose changes require the resource being diffed to be replaced. The
  /// caller should replace the resource if this set is non-empty, or if any of the properties specified in
  /// `detailedDiff` have a `*_REPLACE` kind.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get replaces => $_getList(0);

  /// An optional list of properties that will not ever change (are stable).
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get stables => $_getList(1);

  /// If true, this resource must be deleted *before* its replacement is created.
  @$pb.TagNumber(3)
  $core.bool get deleteBeforeReplace => $_getBF(2);
  @$pb.TagNumber(3)
  set deleteBeforeReplace($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeleteBeforeReplace() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleteBeforeReplace() => $_clearField(3);

  /// The result of the diff. Indicates at a high level whether the resource has changed or not (or, in legacy cases,
  /// if the provider does not know).
  @$pb.TagNumber(4)
  DiffResponse_DiffChanges get changes => $_getN(3);
  @$pb.TagNumber(4)
  set changes(DiffResponse_DiffChanges value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasChanges() => $_has(3);
  @$pb.TagNumber(4)
  void clearChanges() => $_clearField(4);

  /// The set of properties which have changed. This field only supports top-level properties. It *does not* support
  /// full [property paths](property-paths); implementations should use `detailedDiff` when this is required.
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get diffs => $_getList(4);

  /// `detailedDiff` can be used to implement more detailed diffs. A detailed diff is a map from [property
  /// paths](property-paths) to [](pulumirpc.PropertyDiff)s, which describe the kind of change that occurred to the
  /// property located at that path. If a provider does not implement this, the caller (typically the Pulumi engine)
  /// will compute a representation based on the simple diff fields (`changes`, `replaces`, and so on).
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, PropertyDiff> get detailedDiff => $_getMap(5);

  /// True if and only if this response contains a `detailedDiff`.
  @$pb.TagNumber(7)
  $core.bool get hasDetailedDiff => $_getBF(6);
  @$pb.TagNumber(7)
  set hasDetailedDiff($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHasDetailedDiff() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasDetailedDiff() => $_clearField(7);
}

/// `CreateRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.Create) call.
class CreateRequest extends $pb.GeneratedMessage {
  factory CreateRequest({
    $core.String? urn,
    $3.Struct? properties,
    $core.double? timeout,
    $core.bool? preview,
    $core.String? name,
    $core.String? type,
    $core.String? resourceStatusAddress,
    $core.String? resourceStatusToken,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    if (properties != null) result.properties = properties;
    if (timeout != null) result.timeout = timeout;
    if (preview != null) result.preview = preview;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (resourceStatusAddress != null)
      result.resourceStatusAddress = resourceStatusAddress;
    if (resourceStatusToken != null)
      result.resourceStatusToken = resourceStatusToken;
    return result;
  }

  CreateRequest._();

  factory CreateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aD(3, _omitFieldNames ? '' : 'timeout')
    ..aOB(4, _omitFieldNames ? '' : 'preview')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOS(6, _omitFieldNames ? '' : 'type')
    ..aOS(7, _omitFieldNames ? '' : 'resourceStatusAddress')
    ..aOS(8, _omitFieldNames ? '' : 'resourceStatusToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateRequest copyWith(void Function(CreateRequest) updates) =>
      super.copyWith((message) => updates(message as CreateRequest))
          as CreateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRequest create() => CreateRequest._();
  @$core.override
  CreateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateRequest>(create);
  static CreateRequest? _defaultInstance;

  /// The URN of the resource being created.
  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  /// The resource's input properties, to be set during creation. These should have been validated by a call to
  /// [](pulumirpc.ResourceProvider.Check).
  @$pb.TagNumber(2)
  $3.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureProperties() => $_ensure(1);

  /// A timeout in seconds that the caller is prepared to wait for the operation to complete.
  @$pb.TagNumber(3)
  $core.double get timeout => $_getN(2);
  @$pb.TagNumber(3)
  set timeout($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTimeout() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeout() => $_clearField(3);

  /// True if and only if the request is being made as part of a preview/dry run, in which case the provider should not
  /// actually create the resource.
  @$pb.TagNumber(4)
  $core.bool get preview => $_getBF(3);
  @$pb.TagNumber(4)
  set preview($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPreview() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreview() => $_clearField(4);

  /// The name of the resource being created. This must match the name specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the name of the resource.
  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => $_clearField(5);

  /// The type of the resource being created. This must match the type specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the type of the resource.
  @$pb.TagNumber(6)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(6)
  set type($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => $_clearField(6);

  /// The address of a [](pulumirpc.ResourceStatus) service which can be used to e.g. create or update view resources.
  @$pb.TagNumber(7)
  $core.String get resourceStatusAddress => $_getSZ(6);
  @$pb.TagNumber(7)
  set resourceStatusAddress($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasResourceStatusAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearResourceStatusAddress() => $_clearField(7);

  /// The [](pulumirpc.ResourceStatus) service context token to pass when calling methods on the service.
  @$pb.TagNumber(8)
  $core.String get resourceStatusToken => $_getSZ(7);
  @$pb.TagNumber(8)
  set resourceStatusToken($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasResourceStatusToken() => $_has(7);
  @$pb.TagNumber(8)
  void clearResourceStatusToken() => $_clearField(8);
}

/// `CreateResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.Create) call. A `CreateResponse`
/// contains the ID of the created resource, as well as any output properties that arose from the creation process.
class CreateResponse extends $pb.GeneratedMessage {
  factory CreateResponse({
    $core.String? id,
    $3.Struct? properties,
    $core.bool? refreshBeforeUpdate,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (properties != null) result.properties = properties;
    if (refreshBeforeUpdate != null)
      result.refreshBeforeUpdate = refreshBeforeUpdate;
    return result;
  }

  CreateResponse._();

  factory CreateResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aOB(3, _omitFieldNames ? '' : 'refreshBeforeUpdate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateResponse copyWith(void Function(CreateResponse) updates) =>
      super.copyWith((message) => updates(message as CreateResponse))
          as CreateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateResponse create() => CreateResponse._();
  @$core.override
  CreateResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateResponse>(create);
  static CreateResponse? _defaultInstance;

  /// The ID of the created resource.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// The resource's output properties. Typically this will be a union of the resource's input properties and any
  /// additional values that were computed or made available during creation.
  @$pb.TagNumber(2)
  $3.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureProperties() => $_ensure(1);

  /// Indicates that this resource should always be refreshed prior to updates.
  @$pb.TagNumber(3)
  $core.bool get refreshBeforeUpdate => $_getBF(2);
  @$pb.TagNumber(3)
  set refreshBeforeUpdate($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRefreshBeforeUpdate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefreshBeforeUpdate() => $_clearField(3);
}

/// `ReadRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.Read) call.
class ReadRequest extends $pb.GeneratedMessage {
  factory ReadRequest({
    $core.String? id,
    $core.String? urn,
    $3.Struct? properties,
    $3.Struct? inputs,
    $core.String? name,
    $core.String? type,
    $core.String? resourceStatusAddress,
    $core.String? resourceStatusToken,
    $core.Iterable<View>? oldViews,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (urn != null) result.urn = urn;
    if (properties != null) result.properties = properties;
    if (inputs != null) result.inputs = inputs;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (resourceStatusAddress != null)
      result.resourceStatusAddress = resourceStatusAddress;
    if (resourceStatusToken != null)
      result.resourceStatusToken = resourceStatusToken;
    if (oldViews != null) result.oldViews.addAll(oldViews);
    return result;
  }

  ReadRequest._();

  factory ReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'urn')
    ..aOM<$3.Struct>(3, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aOM<$3.Struct>(4, _omitFieldNames ? '' : 'inputs',
        subBuilder: $3.Struct.create)
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOS(6, _omitFieldNames ? '' : 'type')
    ..aOS(7, _omitFieldNames ? '' : 'resourceStatusAddress')
    ..aOS(8, _omitFieldNames ? '' : 'resourceStatusToken')
    ..pPM<View>(9, _omitFieldNames ? '' : 'oldViews', subBuilder: View.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRequest copyWith(void Function(ReadRequest) updates) =>
      super.copyWith((message) => updates(message as ReadRequest))
          as ReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadRequest create() => ReadRequest._();
  @$core.override
  ReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadRequest>(create);
  static ReadRequest? _defaultInstance;

  /// The ID of the resource to read.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// The URN of the resource being read.
  @$pb.TagNumber(2)
  $core.String get urn => $_getSZ(1);
  @$pb.TagNumber(2)
  set urn($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrn() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrn() => $_clearField(2);

  /// Any current state for the resource being read. This state should be sufficient to uniquely identify the resource.
  @$pb.TagNumber(3)
  $3.Struct get properties => $_getN(2);
  @$pb.TagNumber(3)
  set properties($3.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasProperties() => $_has(2);
  @$pb.TagNumber(3)
  void clearProperties() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Struct ensureProperties() => $_ensure(2);

  /// Any current input properties for the resource being read. These will only be populated when the
  /// [](pulumirpc.ResourceProvider.Read) call is being made as part of a refresh operation.
  @$pb.TagNumber(4)
  $3.Struct get inputs => $_getN(3);
  @$pb.TagNumber(4)
  set inputs($3.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasInputs() => $_has(3);
  @$pb.TagNumber(4)
  void clearInputs() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Struct ensureInputs() => $_ensure(3);

  /// The name of the resource being read. This must match the name specified by the `urn` field, and is passed so that
  /// providers do not have to implement URN parsing in order to extract the name of the resource.
  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => $_clearField(5);

  /// The type of the resource being read. This must match the type specified by the `urn` field, and is passed so that
  /// providers do not have to implement URN parsing in order to extract the type of the resource.
  @$pb.TagNumber(6)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(6)
  set type($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => $_clearField(6);

  /// The address of a [](pulumirpc.ResourceStatus) service which can be used to e.g. create or update view resources.
  @$pb.TagNumber(7)
  $core.String get resourceStatusAddress => $_getSZ(6);
  @$pb.TagNumber(7)
  set resourceStatusAddress($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasResourceStatusAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearResourceStatusAddress() => $_clearField(7);

  /// The [](pulumirpc.ResourceStatus) service context token to pass when calling methods on the service.
  @$pb.TagNumber(8)
  $core.String get resourceStatusToken => $_getSZ(7);
  @$pb.TagNumber(8)
  set resourceStatusToken($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasResourceStatusToken() => $_has(7);
  @$pb.TagNumber(8)
  void clearResourceStatusToken() => $_clearField(8);

  /// The old views for the resource being read. These will only be populated when the
  /// [](pulumirpc.ResourceProvider.Read) call is being made as part of a refresh operation.
  @$pb.TagNumber(9)
  $pb.PbList<View> get oldViews => $_getList(8);
}

/// `ReadResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.Read) call. A `ReadResponse` contains
/// the ID of the resource being read, as well as any state that was successfully read from the live environment.
class ReadResponse extends $pb.GeneratedMessage {
  factory ReadResponse({
    $core.String? id,
    $3.Struct? properties,
    $3.Struct? inputs,
    $core.bool? refreshBeforeUpdate,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (properties != null) result.properties = properties;
    if (inputs != null) result.inputs = inputs;
    if (refreshBeforeUpdate != null)
      result.refreshBeforeUpdate = refreshBeforeUpdate;
    return result;
  }

  ReadResponse._();

  factory ReadResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aOM<$3.Struct>(3, _omitFieldNames ? '' : 'inputs',
        subBuilder: $3.Struct.create)
    ..aOB(4, _omitFieldNames ? '' : 'refreshBeforeUpdate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResponse copyWith(void Function(ReadResponse) updates) =>
      super.copyWith((message) => updates(message as ReadResponse))
          as ReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadResponse create() => ReadResponse._();
  @$core.override
  ReadResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadResponse>(create);
  static ReadResponse? _defaultInstance;

  /// The ID of the read resource.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// The output properties of the resource read from the live environment.
  @$pb.TagNumber(2)
  $3.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureProperties() => $_ensure(1);

  /// Output-derived input properties for the resource. These are returned as they would be returned from a
  /// [](pulumirpc.ResourceProvider.Check) call with the same values.
  @$pb.TagNumber(3)
  $3.Struct get inputs => $_getN(2);
  @$pb.TagNumber(3)
  set inputs($3.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInputs() => $_has(2);
  @$pb.TagNumber(3)
  void clearInputs() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Struct ensureInputs() => $_ensure(2);

  /// Indicates that this resource should always be refreshed prior to updates.
  @$pb.TagNumber(4)
  $core.bool get refreshBeforeUpdate => $_getBF(3);
  @$pb.TagNumber(4)
  set refreshBeforeUpdate($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRefreshBeforeUpdate() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshBeforeUpdate() => $_clearField(4);
}

/// `UpdateRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.Update) call.
class UpdateRequest extends $pb.GeneratedMessage {
  factory UpdateRequest({
    $core.String? id,
    $core.String? urn,
    $3.Struct? olds,
    $3.Struct? news,
    $core.double? timeout,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.bool? preview,
    $3.Struct? oldInputs,
    $core.String? name,
    $core.String? type,
    $core.String? resourceStatusAddress,
    $core.String? resourceStatusToken,
    $core.Iterable<View>? oldViews,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (urn != null) result.urn = urn;
    if (olds != null) result.olds = olds;
    if (news != null) result.news = news;
    if (timeout != null) result.timeout = timeout;
    if (ignoreChanges != null) result.ignoreChanges.addAll(ignoreChanges);
    if (preview != null) result.preview = preview;
    if (oldInputs != null) result.oldInputs = oldInputs;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (resourceStatusAddress != null)
      result.resourceStatusAddress = resourceStatusAddress;
    if (resourceStatusToken != null)
      result.resourceStatusToken = resourceStatusToken;
    if (oldViews != null) result.oldViews.addAll(oldViews);
    return result;
  }

  UpdateRequest._();

  factory UpdateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'urn')
    ..aOM<$3.Struct>(3, _omitFieldNames ? '' : 'olds',
        subBuilder: $3.Struct.create)
    ..aOM<$3.Struct>(4, _omitFieldNames ? '' : 'news',
        subBuilder: $3.Struct.create)
    ..aD(5, _omitFieldNames ? '' : 'timeout')
    ..pPS(6, _omitFieldNames ? '' : 'ignoreChanges', protoName: 'ignoreChanges')
    ..aOB(7, _omitFieldNames ? '' : 'preview')
    ..aOM<$3.Struct>(8, _omitFieldNames ? '' : 'oldInputs',
        subBuilder: $3.Struct.create)
    ..aOS(9, _omitFieldNames ? '' : 'name')
    ..aOS(10, _omitFieldNames ? '' : 'type')
    ..aOS(11, _omitFieldNames ? '' : 'resourceStatusAddress')
    ..aOS(12, _omitFieldNames ? '' : 'resourceStatusToken')
    ..pPM<View>(13, _omitFieldNames ? '' : 'oldViews', subBuilder: View.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateRequest))
          as UpdateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  @$core.override
  UpdateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;

  /// The ID of the resource being updated.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// The URN of the resource being updated.
  @$pb.TagNumber(2)
  $core.String get urn => $_getSZ(1);
  @$pb.TagNumber(2)
  set urn($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrn() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrn() => $_clearField(2);

  /// The old *output* properties of the resource being updated.
  @$pb.TagNumber(3)
  $3.Struct get olds => $_getN(2);
  @$pb.TagNumber(3)
  set olds($3.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOlds() => $_has(2);
  @$pb.TagNumber(3)
  void clearOlds() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Struct ensureOlds() => $_ensure(2);

  /// The new input properties of the resource being updated. These should have been validated by a call to
  /// [](pulumirpc.ResourceProvider.Check).
  @$pb.TagNumber(4)
  $3.Struct get news => $_getN(3);
  @$pb.TagNumber(4)
  set news($3.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasNews() => $_has(3);
  @$pb.TagNumber(4)
  void clearNews() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Struct ensureNews() => $_ensure(3);

  /// A timeout in seconds that the caller is prepared to wait for the operation to complete.
  @$pb.TagNumber(5)
  $core.double get timeout => $_getN(4);
  @$pb.TagNumber(5)
  set timeout($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTimeout() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeout() => $_clearField(5);

  /// A set of [property paths](property-paths) that should be treated as unchanged.
  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get ignoreChanges => $_getList(5);

  /// True if and only if the request is being made as part of a preview/dry run, in which case the provider should not
  /// actually update the resource.
  @$pb.TagNumber(7)
  $core.bool get preview => $_getBF(6);
  @$pb.TagNumber(7)
  set preview($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPreview() => $_has(6);
  @$pb.TagNumber(7)
  void clearPreview() => $_clearField(7);

  /// The old *input* properties of the resource being updated.
  @$pb.TagNumber(8)
  $3.Struct get oldInputs => $_getN(7);
  @$pb.TagNumber(8)
  set oldInputs($3.Struct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasOldInputs() => $_has(7);
  @$pb.TagNumber(8)
  void clearOldInputs() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.Struct ensureOldInputs() => $_ensure(7);

  /// The name of the resource being updated. This must match the name specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the name of the resource.
  @$pb.TagNumber(9)
  $core.String get name => $_getSZ(8);
  @$pb.TagNumber(9)
  set name($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasName() => $_has(8);
  @$pb.TagNumber(9)
  void clearName() => $_clearField(9);

  /// The type of the resource being updated. This must match the type specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the type of the resource.
  @$pb.TagNumber(10)
  $core.String get type => $_getSZ(9);
  @$pb.TagNumber(10)
  set type($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasType() => $_has(9);
  @$pb.TagNumber(10)
  void clearType() => $_clearField(10);

  /// The address of a [](pulumirpc.ResourceStatus) service which can be used to e.g. create or update view resources.
  @$pb.TagNumber(11)
  $core.String get resourceStatusAddress => $_getSZ(10);
  @$pb.TagNumber(11)
  set resourceStatusAddress($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasResourceStatusAddress() => $_has(10);
  @$pb.TagNumber(11)
  void clearResourceStatusAddress() => $_clearField(11);

  /// The [](pulumirpc.ResourceStatus) service context token to pass when calling methods on the service.
  @$pb.TagNumber(12)
  $core.String get resourceStatusToken => $_getSZ(11);
  @$pb.TagNumber(12)
  set resourceStatusToken($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasResourceStatusToken() => $_has(11);
  @$pb.TagNumber(12)
  void clearResourceStatusToken() => $_clearField(12);

  /// The old views for the resource being updated.
  @$pb.TagNumber(13)
  $pb.PbList<View> get oldViews => $_getList(12);
}

/// `UpdateResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.Update) call.
class UpdateResponse extends $pb.GeneratedMessage {
  factory UpdateResponse({
    $3.Struct? properties,
    $core.bool? refreshBeforeUpdate,
  }) {
    final result = create();
    if (properties != null) result.properties = properties;
    if (refreshBeforeUpdate != null)
      result.refreshBeforeUpdate = refreshBeforeUpdate;
    return result;
  }

  UpdateResponse._();

  factory UpdateResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$3.Struct>(1, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aOB(2, _omitFieldNames ? '' : 'refreshBeforeUpdate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateResponse))
          as UpdateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  @$core.override
  UpdateResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;

  /// An updated set of resource output properties. Typically this will be a union of the resource's inputs and any
  /// additional values that were computed or made available during the update.
  @$pb.TagNumber(1)
  $3.Struct get properties => $_getN(0);
  @$pb.TagNumber(1)
  set properties($3.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProperties() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperties() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Struct ensureProperties() => $_ensure(0);

  /// Indicates that this resource should always be refreshed prior to updates.
  @$pb.TagNumber(2)
  $core.bool get refreshBeforeUpdate => $_getBF(1);
  @$pb.TagNumber(2)
  set refreshBeforeUpdate($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRefreshBeforeUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshBeforeUpdate() => $_clearField(2);
}

/// `DeleteRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.Delete) call.
class DeleteRequest extends $pb.GeneratedMessage {
  factory DeleteRequest({
    $core.String? id,
    $core.String? urn,
    $3.Struct? properties,
    $core.double? timeout,
    $3.Struct? oldInputs,
    $core.String? name,
    $core.String? type,
    $core.String? resourceStatusAddress,
    $core.String? resourceStatusToken,
    $core.Iterable<View>? oldViews,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (urn != null) result.urn = urn;
    if (properties != null) result.properties = properties;
    if (timeout != null) result.timeout = timeout;
    if (oldInputs != null) result.oldInputs = oldInputs;
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (resourceStatusAddress != null)
      result.resourceStatusAddress = resourceStatusAddress;
    if (resourceStatusToken != null)
      result.resourceStatusToken = resourceStatusToken;
    if (oldViews != null) result.oldViews.addAll(oldViews);
    return result;
  }

  DeleteRequest._();

  factory DeleteRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'urn')
    ..aOM<$3.Struct>(3, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aD(4, _omitFieldNames ? '' : 'timeout')
    ..aOM<$3.Struct>(5, _omitFieldNames ? '' : 'oldInputs',
        subBuilder: $3.Struct.create)
    ..aOS(6, _omitFieldNames ? '' : 'name')
    ..aOS(7, _omitFieldNames ? '' : 'type')
    ..aOS(8, _omitFieldNames ? '' : 'resourceStatusAddress')
    ..aOS(9, _omitFieldNames ? '' : 'resourceStatusToken')
    ..pPM<View>(10, _omitFieldNames ? '' : 'oldViews', subBuilder: View.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteRequest copyWith(void Function(DeleteRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteRequest))
          as DeleteRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRequest create() => DeleteRequest._();
  @$core.override
  DeleteRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRequest>(create);
  static DeleteRequest? _defaultInstance;

  /// The ID of the resource to delete.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// The URN of the resource to delete.
  @$pb.TagNumber(2)
  $core.String get urn => $_getSZ(1);
  @$pb.TagNumber(2)
  set urn($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrn() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrn() => $_clearField(2);

  /// The old *output* properties of the resource being deleted.
  @$pb.TagNumber(3)
  $3.Struct get properties => $_getN(2);
  @$pb.TagNumber(3)
  set properties($3.Struct value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasProperties() => $_has(2);
  @$pb.TagNumber(3)
  void clearProperties() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Struct ensureProperties() => $_ensure(2);

  /// A timeout in seconds that the caller is prepared to wait for the operation to complete.
  @$pb.TagNumber(4)
  $core.double get timeout => $_getN(3);
  @$pb.TagNumber(4)
  set timeout($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTimeout() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeout() => $_clearField(4);

  /// The old *input* properties of the resource being deleted.
  @$pb.TagNumber(5)
  $3.Struct get oldInputs => $_getN(4);
  @$pb.TagNumber(5)
  set oldInputs($3.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOldInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearOldInputs() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Struct ensureOldInputs() => $_ensure(4);

  /// The name of the resource being deleted. This must match the name specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the name of the resource.
  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => $_clearField(6);

  /// The type of the resource being deleted. This must match the type specified by the `urn` field, and is passed so
  /// that providers do not have to implement URN parsing in order to extract the type of the resource.
  @$pb.TagNumber(7)
  $core.String get type => $_getSZ(6);
  @$pb.TagNumber(7)
  set type($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => $_clearField(7);

  /// The address of a [](pulumirpc.ResourceStatus) service which can be used to e.g. create or update view resources.
  @$pb.TagNumber(8)
  $core.String get resourceStatusAddress => $_getSZ(7);
  @$pb.TagNumber(8)
  set resourceStatusAddress($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasResourceStatusAddress() => $_has(7);
  @$pb.TagNumber(8)
  void clearResourceStatusAddress() => $_clearField(8);

  /// The [](pulumirpc.ResourceStatus) service context token to pass when calling methods on the service.
  @$pb.TagNumber(9)
  $core.String get resourceStatusToken => $_getSZ(8);
  @$pb.TagNumber(9)
  set resourceStatusToken($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasResourceStatusToken() => $_has(8);
  @$pb.TagNumber(9)
  void clearResourceStatusToken() => $_clearField(9);

  /// The old views for the resource being read.
  @$pb.TagNumber(10)
  $pb.PbList<View> get oldViews => $_getList(9);
}

/// A `PropertyDependencies` list is a set of URNs that a particular property may depend on.
class ConstructRequest_PropertyDependencies extends $pb.GeneratedMessage {
  factory ConstructRequest_PropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final result = create();
    if (urns != null) result.urns.addAll(urns);
    return result;
  }

  ConstructRequest_PropertyDependencies._();

  factory ConstructRequest_PropertyDependencies.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConstructRequest_PropertyDependencies.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructRequest.PropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructRequest_PropertyDependencies clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructRequest_PropertyDependencies copyWith(
          void Function(ConstructRequest_PropertyDependencies) updates) =>
      super.copyWith((message) =>
              updates(message as ConstructRequest_PropertyDependencies))
          as ConstructRequest_PropertyDependencies;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructRequest_PropertyDependencies create() =>
      ConstructRequest_PropertyDependencies._();
  @$core.override
  ConstructRequest_PropertyDependencies createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConstructRequest_PropertyDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConstructRequest_PropertyDependencies>(create);
  static ConstructRequest_PropertyDependencies? _defaultInstance;

  /// A list of URNs that this property depends on.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get urns => $_getList(0);
}

/// A `CustomTimeouts` object encapsulates a set of timeouts for the various CRUD operations that might be performed
/// on this resource's nested resources. Timeout values are specified as duration strings, such as `"5ms"` (5
/// milliseconds), `"40s"` (40 seconds), or `"1m30s"` (1 minute and 30 seconds). The following units of time are
/// supported:
///
/// * `ns`: nanoseconds
/// * `us` or `µs`: microseconds
/// * `ms`: milliseconds
/// * `s`: seconds
/// * `m`: minutes
/// * `h`: hours
class ConstructRequest_CustomTimeouts extends $pb.GeneratedMessage {
  factory ConstructRequest_CustomTimeouts({
    $core.String? create_1,
    $core.String? update,
    $core.String? delete,
  }) {
    final result = create();
    if (create_1 != null) result.create_1 = create_1;
    if (update != null) result.update = update;
    if (delete != null) result.delete = delete;
    return result;
  }

  ConstructRequest_CustomTimeouts._();

  factory ConstructRequest_CustomTimeouts.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConstructRequest_CustomTimeouts.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructRequest.CustomTimeouts',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'create')
    ..aOS(2, _omitFieldNames ? '' : 'update')
    ..aOS(3, _omitFieldNames ? '' : 'delete')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructRequest_CustomTimeouts clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructRequest_CustomTimeouts copyWith(
          void Function(ConstructRequest_CustomTimeouts) updates) =>
      super.copyWith(
              (message) => updates(message as ConstructRequest_CustomTimeouts))
          as ConstructRequest_CustomTimeouts;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructRequest_CustomTimeouts create() =>
      ConstructRequest_CustomTimeouts._();
  @$core.override
  ConstructRequest_CustomTimeouts createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConstructRequest_CustomTimeouts getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConstructRequest_CustomTimeouts>(
          create);
  static ConstructRequest_CustomTimeouts? _defaultInstance;

  /// How long a caller is prepared to wait for a nested resource's [](pulumirpc.ResourceProvider.Create) operation
  /// to complete.
  @$pb.TagNumber(1)
  $core.String get create_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set create_1($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCreate_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreate_1() => $_clearField(1);

  /// How long a caller is prepared to wait for a nested resource's [](pulumirpc.ResourceProvider.Update) operation
  /// to complete.
  @$pb.TagNumber(2)
  $core.String get update => $_getSZ(1);
  @$pb.TagNumber(2)
  set update($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdate() => $_clearField(2);

  /// How long a caller is prepared to wait for a nested resource's [](pulumirpc.ResourceProvider.Delete) operation
  /// to complete.
  @$pb.TagNumber(3)
  $core.String get delete => $_getSZ(2);
  @$pb.TagNumber(3)
  set delete($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDelete() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelete() => $_clearField(3);
}

class ConstructRequest_ResourceHooksBinding extends $pb.GeneratedMessage {
  factory ConstructRequest_ResourceHooksBinding({
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

  ConstructRequest_ResourceHooksBinding._();

  factory ConstructRequest_ResourceHooksBinding.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConstructRequest_ResourceHooksBinding.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructRequest.ResourceHooksBinding',
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
  ConstructRequest_ResourceHooksBinding clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructRequest_ResourceHooksBinding copyWith(
          void Function(ConstructRequest_ResourceHooksBinding) updates) =>
      super.copyWith((message) =>
              updates(message as ConstructRequest_ResourceHooksBinding))
          as ConstructRequest_ResourceHooksBinding;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructRequest_ResourceHooksBinding create() =>
      ConstructRequest_ResourceHooksBinding._();
  @$core.override
  ConstructRequest_ResourceHooksBinding createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConstructRequest_ResourceHooksBinding getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConstructRequest_ResourceHooksBinding>(create);
  static ConstructRequest_ResourceHooksBinding? _defaultInstance;

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

/// `ConstructRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.Construct) call. A
/// `ConstructRequest` captures enough data to be able to register nested components against the caller's resource
/// monitor.
class ConstructRequest extends $pb.GeneratedMessage {
  factory ConstructRequest({
    $core.String? project,
    $core.String? stack,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? config,
    $core.bool? dryRun,
    $core.int? parallel,
    $core.String? monitorEndpoint,
    $core.String? type,
    $core.String? name,
    $core.String? parent,
    $3.Struct? inputs,
    $core.Iterable<
            $core
            .MapEntry<$core.String, ConstructRequest_PropertyDependencies>>?
        inputDependencies,
    $core.bool? protect,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? providers,
    $core.Iterable<$core.String>? dependencies,
    $core.Iterable<$core.String>? configSecretKeys,
    $core.String? organization,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    ConstructRequest_CustomTimeouts? customTimeouts,
    $core.String? deletedWith,
    $core.bool? deleteBeforeReplace,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.Iterable<$core.String>? replaceOnChanges,
    $core.bool? retainOnDelete,
    $core.bool? acceptsOutputValues,
    ConstructRequest_ResourceHooksBinding? resourceHooks,
    $core.String? stackTraceHandle,
    $core.Iterable<$core.String>? replaceWith,
    $core.Iterable<$4.Alias>? aliases,
    $3.Value? replacementTrigger,
  }) {
    final result = create();
    if (project != null) result.project = project;
    if (stack != null) result.stack = stack;
    if (config != null) result.config.addEntries(config);
    if (dryRun != null) result.dryRun = dryRun;
    if (parallel != null) result.parallel = parallel;
    if (monitorEndpoint != null) result.monitorEndpoint = monitorEndpoint;
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (parent != null) result.parent = parent;
    if (inputs != null) result.inputs = inputs;
    if (inputDependencies != null)
      result.inputDependencies.addEntries(inputDependencies);
    if (protect != null) result.protect = protect;
    if (providers != null) result.providers.addEntries(providers);
    if (dependencies != null) result.dependencies.addAll(dependencies);
    if (configSecretKeys != null)
      result.configSecretKeys.addAll(configSecretKeys);
    if (organization != null) result.organization = organization;
    if (additionalSecretOutputs != null)
      result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    if (customTimeouts != null) result.customTimeouts = customTimeouts;
    if (deletedWith != null) result.deletedWith = deletedWith;
    if (deleteBeforeReplace != null)
      result.deleteBeforeReplace = deleteBeforeReplace;
    if (ignoreChanges != null) result.ignoreChanges.addAll(ignoreChanges);
    if (replaceOnChanges != null)
      result.replaceOnChanges.addAll(replaceOnChanges);
    if (retainOnDelete != null) result.retainOnDelete = retainOnDelete;
    if (acceptsOutputValues != null)
      result.acceptsOutputValues = acceptsOutputValues;
    if (resourceHooks != null) result.resourceHooks = resourceHooks;
    if (stackTraceHandle != null) result.stackTraceHandle = stackTraceHandle;
    if (replaceWith != null) result.replaceWith.addAll(replaceWith);
    if (aliases != null) result.aliases.addAll(aliases);
    if (replacementTrigger != null)
      result.replacementTrigger = replacementTrigger;
    return result;
  }

  ConstructRequest._();

  factory ConstructRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConstructRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'stack')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'config',
        entryClassName: 'ConstructRequest.ConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(4, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aI(5, _omitFieldNames ? '' : 'parallel')
    ..aOS(6, _omitFieldNames ? '' : 'monitorEndpoint',
        protoName: 'monitorEndpoint')
    ..aOS(7, _omitFieldNames ? '' : 'type')
    ..aOS(8, _omitFieldNames ? '' : 'name')
    ..aOS(9, _omitFieldNames ? '' : 'parent')
    ..aOM<$3.Struct>(10, _omitFieldNames ? '' : 'inputs',
        subBuilder: $3.Struct.create)
    ..m<$core.String, ConstructRequest_PropertyDependencies>(
        11, _omitFieldNames ? '' : 'inputDependencies',
        protoName: 'inputDependencies',
        entryClassName: 'ConstructRequest.InputDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ConstructRequest_PropertyDependencies.create,
        valueDefaultOrMaker: ConstructRequest_PropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(12, _omitFieldNames ? '' : 'protect')
    ..m<$core.String, $core.String>(13, _omitFieldNames ? '' : 'providers',
        entryClassName: 'ConstructRequest.ProvidersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPS(15, _omitFieldNames ? '' : 'dependencies')
    ..pPS(16, _omitFieldNames ? '' : 'configSecretKeys',
        protoName: 'configSecretKeys')
    ..aOS(17, _omitFieldNames ? '' : 'organization')
    ..pPS(18, _omitFieldNames ? '' : 'additionalSecretOutputs',
        protoName: 'additionalSecretOutputs')
    ..aOM<ConstructRequest_CustomTimeouts>(
        19, _omitFieldNames ? '' : 'customTimeouts',
        protoName: 'customTimeouts',
        subBuilder: ConstructRequest_CustomTimeouts.create)
    ..aOS(20, _omitFieldNames ? '' : 'deletedWith', protoName: 'deletedWith')
    ..aOB(21, _omitFieldNames ? '' : 'deleteBeforeReplace',
        protoName: 'deleteBeforeReplace')
    ..pPS(22, _omitFieldNames ? '' : 'ignoreChanges',
        protoName: 'ignoreChanges')
    ..pPS(23, _omitFieldNames ? '' : 'replaceOnChanges',
        protoName: 'replaceOnChanges')
    ..aOB(24, _omitFieldNames ? '' : 'retainOnDelete',
        protoName: 'retainOnDelete')
    ..aOB(25, _omitFieldNames ? '' : 'acceptsOutputValues')
    ..aOM<ConstructRequest_ResourceHooksBinding>(
        26, _omitFieldNames ? '' : 'resourceHooks',
        subBuilder: ConstructRequest_ResourceHooksBinding.create)
    ..aOS(27, _omitFieldNames ? '' : 'stackTraceHandle')
    ..pPS(28, _omitFieldNames ? '' : 'replaceWith')
    ..pPM<$4.Alias>(29, _omitFieldNames ? '' : 'aliases',
        subBuilder: $4.Alias.create)
    ..aOM<$3.Value>(30, _omitFieldNames ? '' : 'replacementTrigger',
        subBuilder: $3.Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructRequest copyWith(void Function(ConstructRequest) updates) =>
      super.copyWith((message) => updates(message as ConstructRequest))
          as ConstructRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructRequest create() => ConstructRequest._();
  @$core.override
  ConstructRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConstructRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConstructRequest>(create);
  static ConstructRequest? _defaultInstance;

  /// The project to which this resource and its nested resources will belong.
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

  /// Configuration for the specified project and stack.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get config => $_getMap(2);

  /// True if and only if the request is being made as part of a preview/dry run, in which case the provider should not
  /// actually construct the component.
  @$pb.TagNumber(4)
  $core.bool get dryRun => $_getBF(3);
  @$pb.TagNumber(4)
  set dryRun($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDryRun() => $_has(3);
  @$pb.TagNumber(4)
  void clearDryRun() => $_clearField(4);

  /// The degree of parallelism that may be used for resource operations. A value less than or equal to 1 indicates
  /// that operations should be performed serially.
  @$pb.TagNumber(5)
  $core.int get parallel => $_getIZ(4);
  @$pb.TagNumber(5)
  set parallel($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasParallel() => $_has(4);
  @$pb.TagNumber(5)
  void clearParallel() => $_clearField(5);

  /// The address of the [](pulumirpc.ResourceMonitor) that the provider should connect to in order to send [resource
  /// registrations](resource-registration) for its nested resources.
  @$pb.TagNumber(6)
  $core.String get monitorEndpoint => $_getSZ(5);
  @$pb.TagNumber(6)
  set monitorEndpoint($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMonitorEndpoint() => $_has(5);
  @$pb.TagNumber(6)
  void clearMonitorEndpoint() => $_clearField(6);

  /// The type of the component resource being constructed. This must match the type specified by the `urn` field, and
  /// is passed so that providers do not have to implement URN parsing in order to extract the type of the resource.
  @$pb.TagNumber(7)
  $core.String get type => $_getSZ(6);
  @$pb.TagNumber(7)
  set type($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => $_clearField(7);

  /// The name of the component resource being constructed. This must match the name specified by the `urn` field, and
  /// is passed so that providers do not have to implement URN parsing in order to extract the name of the resource.
  @$pb.TagNumber(8)
  $core.String get name => $_getSZ(7);
  @$pb.TagNumber(8)
  set name($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasName() => $_has(7);
  @$pb.TagNumber(8)
  void clearName() => $_clearField(8);

  /// An optional parent resource that the component (and by extension, its nested resources) should be children of.
  @$pb.TagNumber(9)
  $core.String get parent => $_getSZ(8);
  @$pb.TagNumber(9)
  set parent($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasParent() => $_has(8);
  @$pb.TagNumber(9)
  void clearParent() => $_clearField(9);

  /// The component resource's input properties. Unlike the inputs of custom resources, these will *not* have been
  /// passed to a call to [](pulumirpc.ResourceProvider.Check). By virtue of their being a composition of other
  /// resources, component resources are able to (and therefore expected) to validate their own inputs. Moreover,
  /// [](pulumirpc.ResourceProvider.Check) will be called on any inputs passed to nested custom resources as usual.
  @$pb.TagNumber(10)
  $3.Struct get inputs => $_getN(9);
  @$pb.TagNumber(10)
  set inputs($3.Struct value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasInputs() => $_has(9);
  @$pb.TagNumber(10)
  void clearInputs() => $_clearField(10);
  @$pb.TagNumber(10)
  $3.Struct ensureInputs() => $_ensure(9);

  /// A map of property dependencies for the component resource and its nested resources.
  @$pb.TagNumber(11)
  $pb.PbMap<$core.String, ConstructRequest_PropertyDependencies>
      get inputDependencies => $_getMap(10);

  /// True if and only if the resource (and by extension, its nested resources) should be marked as protected.
  /// Protected resources cannot be deleted without first being unprotected.
  @$pb.TagNumber(12)
  $core.bool get protect => $_getBF(11);
  @$pb.TagNumber(12)
  set protect($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasProtect() => $_has(11);
  @$pb.TagNumber(12)
  void clearProtect() => $_clearField(12);

  /// A map of package names to provider references for the component resource and its nested resources.
  @$pb.TagNumber(13)
  $pb.PbMap<$core.String, $core.String> get providers => $_getMap(12);

  /// A list of URNs that this resource and its nested resources depend on.
  @$pb.TagNumber(15)
  $pb.PbList<$core.String> get dependencies => $_getList(13);

  /// A set of configuration keys whose values are [secret](output-secrets).
  @$pb.TagNumber(16)
  $pb.PbList<$core.String> get configSecretKeys => $_getList(14);

  /// The organization to which this resource and its nested resources will belong.
  @$pb.TagNumber(17)
  $core.String get organization => $_getSZ(15);
  @$pb.TagNumber(17)
  set organization($core.String value) => $_setString(15, value);
  @$pb.TagNumber(17)
  $core.bool hasOrganization() => $_has(15);
  @$pb.TagNumber(17)
  void clearOrganization() => $_clearField(17);

  /// A list of input properties whose values should be treated as [secret](output-secrets).
  @$pb.TagNumber(18)
  $pb.PbList<$core.String> get additionalSecretOutputs => $_getList(16);

  /// A set of custom timeouts that specify how long the caller is prepared to wait for the various CRUD operations of
  /// this resource's nested resources.
  @$pb.TagNumber(19)
  ConstructRequest_CustomTimeouts get customTimeouts => $_getN(17);
  @$pb.TagNumber(19)
  set customTimeouts(ConstructRequest_CustomTimeouts value) =>
      $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasCustomTimeouts() => $_has(17);
  @$pb.TagNumber(19)
  void clearCustomTimeouts() => $_clearField(19);
  @$pb.TagNumber(19)
  ConstructRequest_CustomTimeouts ensureCustomTimeouts() => $_ensure(17);

  /// The URN of a resource that this resource (and thus its nested resources) will be implicitly deleted with. If the
  /// resource referred to by this URN is deleted in the same operation that this resource would be deleted, the
  /// [](pulumirpc.ResourceProvider.Delete) call for this resource will be elided (since this dependency signals that
  /// it will have already been deleted).
  @$pb.TagNumber(20)
  $core.String get deletedWith => $_getSZ(18);
  @$pb.TagNumber(20)
  set deletedWith($core.String value) => $_setString(18, value);
  @$pb.TagNumber(20)
  $core.bool hasDeletedWith() => $_has(18);
  @$pb.TagNumber(20)
  void clearDeletedWith() => $_clearField(20);

  /// If true, this resource (and its nested resources) must be deleted *before* its replacement is created.
  @$pb.TagNumber(21)
  $core.bool get deleteBeforeReplace => $_getBF(19);
  @$pb.TagNumber(21)
  set deleteBeforeReplace($core.bool value) => $_setBool(19, value);
  @$pb.TagNumber(21)
  $core.bool hasDeleteBeforeReplace() => $_has(19);
  @$pb.TagNumber(21)
  void clearDeleteBeforeReplace() => $_clearField(21);

  /// A set of [property paths](property-paths) that should be treated as unchanged.
  @$pb.TagNumber(22)
  $pb.PbList<$core.String> get ignoreChanges => $_getList(20);

  /// A set of properties that, when changed, trigger a replacement.
  @$pb.TagNumber(23)
  $pb.PbList<$core.String> get replaceOnChanges => $_getList(21);

  /// True if [](pulumirpc.ResourceProvider.Delete) should *not* be called when the resource (and by extension, its
  /// nested resources) are removed from a Pulumi program.
  @$pb.TagNumber(24)
  $core.bool get retainOnDelete => $_getBF(22);
  @$pb.TagNumber(24)
  set retainOnDelete($core.bool value) => $_setBool(22, value);
  @$pb.TagNumber(24)
  $core.bool hasRetainOnDelete() => $_has(22);
  @$pb.TagNumber(24)
  void clearRetainOnDelete() => $_clearField(24);

  /// True if the caller is capable of accepting output values in response to the call. If this is set, these outputs
  /// may be used to communicate dependency information and so there is no need to populate
  /// [](pulumirpc.ConstructResponse)'s `stateDependencies` field.
  @$pb.TagNumber(25)
  $core.bool get acceptsOutputValues => $_getBF(23);
  @$pb.TagNumber(25)
  set acceptsOutputValues($core.bool value) => $_setBool(23, value);
  @$pb.TagNumber(25)
  $core.bool hasAcceptsOutputValues() => $_has(23);
  @$pb.TagNumber(25)
  void clearAcceptsOutputValues() => $_clearField(25);

  @$pb.TagNumber(26)
  ConstructRequest_ResourceHooksBinding get resourceHooks => $_getN(24);
  @$pb.TagNumber(26)
  set resourceHooks(ConstructRequest_ResourceHooksBinding value) =>
      $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasResourceHooks() => $_has(24);
  @$pb.TagNumber(26)
  void clearResourceHooks() => $_clearField(26);
  @$pb.TagNumber(26)
  ConstructRequest_ResourceHooksBinding ensureResourceHooks() => $_ensure(24);

  /// The stack trace handle for the construct call. Supports stitching stack traces together across plugins.
  @$pb.TagNumber(27)
  $core.String get stackTraceHandle => $_getSZ(25);
  @$pb.TagNumber(27)
  set stackTraceHandle($core.String value) => $_setString(25, value);
  @$pb.TagNumber(27)
  $core.bool hasStackTraceHandle() => $_has(25);
  @$pb.TagNumber(27)
  void clearStackTraceHandle() => $_clearField(27);

  /// The URNs of resources whose replaces will trigger a replace on this resource.
  @$pb.TagNumber(28)
  $pb.PbList<$core.String> get replaceWith => $_getList(26);

  /// a list of additional aliases that should be considered the same.
  @$pb.TagNumber(29)
  $pb.PbList<$4.Alias> get aliases => $_getList(27);

  /// If set, the engine will diff this value with the last recorded value, and trigger a replace if they are not
  /// equal.
  @$pb.TagNumber(30)
  $3.Value get replacementTrigger => $_getN(28);
  @$pb.TagNumber(30)
  set replacementTrigger($3.Value value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasReplacementTrigger() => $_has(28);
  @$pb.TagNumber(30)
  void clearReplacementTrigger() => $_clearField(30);
  @$pb.TagNumber(30)
  $3.Value ensureReplacementTrigger() => $_ensure(28);
}

/// A `PropertyDependencies` list is a set of URNs that a particular property may depend on.
class ConstructResponse_PropertyDependencies extends $pb.GeneratedMessage {
  factory ConstructResponse_PropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final result = create();
    if (urns != null) result.urns.addAll(urns);
    return result;
  }

  ConstructResponse_PropertyDependencies._();

  factory ConstructResponse_PropertyDependencies.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConstructResponse_PropertyDependencies.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructResponse.PropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructResponse_PropertyDependencies clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructResponse_PropertyDependencies copyWith(
          void Function(ConstructResponse_PropertyDependencies) updates) =>
      super.copyWith((message) =>
              updates(message as ConstructResponse_PropertyDependencies))
          as ConstructResponse_PropertyDependencies;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructResponse_PropertyDependencies create() =>
      ConstructResponse_PropertyDependencies._();
  @$core.override
  ConstructResponse_PropertyDependencies createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConstructResponse_PropertyDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConstructResponse_PropertyDependencies>(create);
  static ConstructResponse_PropertyDependencies? _defaultInstance;

  /// A list of URNs that this property depends on.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get urns => $_getList(0);
}

/// `ConstructResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.Construct) call.
class ConstructResponse extends $pb.GeneratedMessage {
  factory ConstructResponse({
    $core.String? urn,
    $3.Struct? state,
    $core.Iterable<
            $core
            .MapEntry<$core.String, ConstructResponse_PropertyDependencies>>?
        stateDependencies,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    if (state != null) result.state = state;
    if (stateDependencies != null)
      result.stateDependencies.addEntries(stateDependencies);
    return result;
  }

  ConstructResponse._();

  factory ConstructResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConstructResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'state',
        subBuilder: $3.Struct.create)
    ..m<$core.String, ConstructResponse_PropertyDependencies>(
        3, _omitFieldNames ? '' : 'stateDependencies',
        protoName: 'stateDependencies',
        entryClassName: 'ConstructResponse.StateDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ConstructResponse_PropertyDependencies.create,
        valueDefaultOrMaker: ConstructResponse_PropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstructResponse copyWith(void Function(ConstructResponse) updates) =>
      super.copyWith((message) => updates(message as ConstructResponse))
          as ConstructResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructResponse create() => ConstructResponse._();
  @$core.override
  ConstructResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConstructResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConstructResponse>(create);
  static ConstructResponse? _defaultInstance;

  /// The URN of the constructed component resource.
  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  /// Any output properties that the component registered as part of its construction.
  @$pb.TagNumber(2)
  $3.Struct get state => $_getN(1);
  @$pb.TagNumber(2)
  set state($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureState() => $_ensure(1);

  /// A map of property dependencies for the component's outputs. This will be set if the caller indicated that it
  /// could not receive dependency-communicating [output](outputs) values by setting [](pulumirpc.ConstructRequest)'s
  /// `accepts_output_values` field to false.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, ConstructResponse_PropertyDependencies>
      get stateDependencies => $_getMap(2);
}

/// ErrorResourceInitFailed is sent as a Detail `ResourceProvider.{Create, Update}` fail because a
/// resource was created successfully, but failed to initialize.
class ErrorResourceInitFailed extends $pb.GeneratedMessage {
  factory ErrorResourceInitFailed({
    $core.String? id,
    $3.Struct? properties,
    $core.Iterable<$core.String>? reasons,
    $3.Struct? inputs,
    $core.bool? refreshBeforeUpdate,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (properties != null) result.properties = properties;
    if (reasons != null) result.reasons.addAll(reasons);
    if (inputs != null) result.inputs = inputs;
    if (refreshBeforeUpdate != null)
      result.refreshBeforeUpdate = refreshBeforeUpdate;
    return result;
  }

  ErrorResourceInitFailed._();

  factory ErrorResourceInitFailed.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ErrorResourceInitFailed.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ErrorResourceInitFailed',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..pPS(3, _omitFieldNames ? '' : 'reasons')
    ..aOM<$3.Struct>(4, _omitFieldNames ? '' : 'inputs',
        subBuilder: $3.Struct.create)
    ..aOB(5, _omitFieldNames ? '' : 'refreshBeforeUpdate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorResourceInitFailed clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorResourceInitFailed copyWith(
          void Function(ErrorResourceInitFailed) updates) =>
      super.copyWith((message) => updates(message as ErrorResourceInitFailed))
          as ErrorResourceInitFailed;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorResourceInitFailed create() => ErrorResourceInitFailed._();
  @$core.override
  ErrorResourceInitFailed createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ErrorResourceInitFailed getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ErrorResourceInitFailed>(create);
  static ErrorResourceInitFailed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureProperties() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get reasons => $_getList(2);

  @$pb.TagNumber(4)
  $3.Struct get inputs => $_getN(3);
  @$pb.TagNumber(4)
  set inputs($3.Struct value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasInputs() => $_has(3);
  @$pb.TagNumber(4)
  void clearInputs() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Struct ensureInputs() => $_ensure(3);

  /// Indicates that this resource should always be refreshed prior to updates.
  @$pb.TagNumber(5)
  $core.bool get refreshBeforeUpdate => $_getBF(4);
  @$pb.TagNumber(5)
  set refreshBeforeUpdate($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRefreshBeforeUpdate() => $_has(4);
  @$pb.TagNumber(5)
  void clearRefreshBeforeUpdate() => $_clearField(5);
}

/// `GetMappingRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.GetMapping) call.
class GetMappingRequest extends $pb.GeneratedMessage {
  factory GetMappingRequest({
    $core.String? key,
    $core.String? provider,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (provider != null) result.provider = provider;
    return result;
  }

  GetMappingRequest._();

  factory GetMappingRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMappingRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'provider')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingRequest copyWith(void Function(GetMappingRequest) updates) =>
      super.copyWith((message) => updates(message as GetMappingRequest))
          as GetMappingRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingRequest create() => GetMappingRequest._();
  @$core.override
  GetMappingRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMappingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingRequest>(create);
  static GetMappingRequest? _defaultInstance;

  /// The conversion key for the mapping being requested. This typically corresponds to the source language, such as
  /// `terraform` in the case of mapping Terraform names to Pulumi names.
  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  /// An optional *source provider key* for the mapping being requested. If this is empty, the provider should assume
  /// that this request is from an old engine prior to the introduction of [](pulumirpc.ResourceProvider.GetMappings).
  /// In these cases the request should be answered with the "primary" mapping. If this field is set, the `provider`
  /// field in the corresponding [](pulumirpc.GetMappingResponse) should contain the same value.
  @$pb.TagNumber(2)
  $core.String get provider => $_getSZ(1);
  @$pb.TagNumber(2)
  set provider($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => $_clearField(2);
}

/// `GetMappingResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.GetMapping) call. The data
/// within a `GetMappingResponse` will normally be human-readable JSON (e.g. an object mapping names from the source to
/// Pulumi), but the engine doesn't mandate any specific format.
class GetMappingResponse extends $pb.GeneratedMessage {
  factory GetMappingResponse({
    $core.String? provider,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (provider != null) result.provider = provider;
    if (data != null) result.data = data;
    return result;
  }

  GetMappingResponse._();

  factory GetMappingResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMappingResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'provider')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingResponse copyWith(void Function(GetMappingResponse) updates) =>
      super.copyWith((message) => updates(message as GetMappingResponse))
          as GetMappingResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingResponse create() => GetMappingResponse._();
  @$core.override
  GetMappingResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMappingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingResponse>(create);
  static GetMappingResponse? _defaultInstance;

  /// The *source provider key* that this mapping contains data for.
  @$pb.TagNumber(1)
  $core.String get provider => $_getSZ(0);
  @$pb.TagNumber(1)
  set provider($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => $_clearField(1);

  /// Mapping data in a format specific to the conversion plugin/source language.
  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
}

/// `GetMappingsRequest` is the type of requests sent as part of a [](pulumirpc.ResourceProvider.GetMappings) call.
class GetMappingsRequest extends $pb.GeneratedMessage {
  factory GetMappingsRequest({
    $core.String? key,
  }) {
    final result = create();
    if (key != null) result.key = key;
    return result;
  }

  GetMappingsRequest._();

  factory GetMappingsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMappingsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingsRequest copyWith(void Function(GetMappingsRequest) updates) =>
      super.copyWith((message) => updates(message as GetMappingsRequest))
          as GetMappingsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingsRequest create() => GetMappingsRequest._();
  @$core.override
  GetMappingsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMappingsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingsRequest>(create);
  static GetMappingsRequest? _defaultInstance;

  /// The conversion key for the mapping being requested. This typically corresponds to the source language, such as
  /// `terraform` in the case of mapping Terraform names to Pulumi names.
  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);
}

/// `GetMappingsResponse` is the type of responses sent by a [](pulumirpc.ResourceProvider.GetMappings) call.
class GetMappingsResponse extends $pb.GeneratedMessage {
  factory GetMappingsResponse({
    $core.Iterable<$core.String>? providers,
  }) {
    final result = create();
    if (providers != null) result.providers.addAll(providers);
    return result;
  }

  GetMappingsResponse._();

  factory GetMappingsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMappingsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'providers')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingsResponse copyWith(void Function(GetMappingsResponse) updates) =>
      super.copyWith((message) => updates(message as GetMappingsResponse))
          as GetMappingsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingsResponse create() => GetMappingsResponse._();
  @$core.override
  GetMappingsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMappingsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingsResponse>(create);
  static GetMappingsResponse? _defaultInstance;

  /// The set of *source provider keys* this provider can supply mappings for. For example the Pulumi provider
  /// `terraform-template` would return `["template"]` for this.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get providers => $_getList(0);
}

/// `View` represents the state of a view resource.
class View extends $pb.GeneratedMessage {
  factory View({
    $core.String? type,
    $core.String? name,
    $core.String? parentType,
    $core.String? parentName,
    $3.Struct? inputs,
    $3.Struct? outputs,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (parentType != null) result.parentType = parentType;
    if (parentName != null) result.parentName = parentName;
    if (inputs != null) result.inputs = inputs;
    if (outputs != null) result.outputs = outputs;
    return result;
  }

  View._();

  factory View.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory View.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'View',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'parentType')
    ..aOS(4, _omitFieldNames ? '' : 'parentName')
    ..aOM<$3.Struct>(5, _omitFieldNames ? '' : 'inputs',
        subBuilder: $3.Struct.create)
    ..aOM<$3.Struct>(6, _omitFieldNames ? '' : 'outputs',
        subBuilder: $3.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  View clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  View copyWith(void Function(View) updates) =>
      super.copyWith((message) => updates(message as View)) as View;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static View create() => View._();
  @$core.override
  View createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static View getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<View>(create);
  static View? _defaultInstance;

  /// The type of the view resource.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// The name of the view resource.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// An optional type of the parent view resource.
  @$pb.TagNumber(3)
  $core.String get parentType => $_getSZ(2);
  @$pb.TagNumber(3)
  set parentType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasParentType() => $_has(2);
  @$pb.TagNumber(3)
  void clearParentType() => $_clearField(3);

  /// An optional name of the parent view resource.
  @$pb.TagNumber(4)
  $core.String get parentName => $_getSZ(3);
  @$pb.TagNumber(4)
  set parentName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasParentName() => $_has(3);
  @$pb.TagNumber(4)
  void clearParentName() => $_clearField(4);

  /// The view resource's inputs.
  @$pb.TagNumber(5)
  $3.Struct get inputs => $_getN(4);
  @$pb.TagNumber(5)
  set inputs($3.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearInputs() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Struct ensureInputs() => $_ensure(4);

  /// The view resource's outputs.
  @$pb.TagNumber(6)
  $3.Struct get outputs => $_getN(5);
  @$pb.TagNumber(6)
  set outputs($3.Struct value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOutputs() => $_has(5);
  @$pb.TagNumber(6)
  void clearOutputs() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.Struct ensureOutputs() => $_ensure(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
