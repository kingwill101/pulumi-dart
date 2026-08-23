// This is a generated file - do not edit.
//
// Generated from pulumi/language.proto.

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
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $1;

import 'language.pb.dart' as $0;
import 'plugin.pb.dart' as $2;

export 'language.pb.dart';

/// The LanguageRuntime service defines a standard interface for [language hosts/runtimes](languages). At a high level, a
/// language runtime provides the ability to execute programs, install and query dependencies, and generate code for a
/// specific language.
@$pb.GrpcServiceName('pulumirpc.LanguageRuntime')
class LanguageRuntimeClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  LanguageRuntimeClient(super.channel, {super.options, super.interceptors});

  /// `Handshake` is the first call made by the engine to a language host. It is used to pass the engine's address to
  /// the language host so that it may establish its own connections back, and to establish protocol configuration that
  /// will be used to communicate between the two parties.
  $grpc.ResponseFuture<$0.LanguageHandshakeResponse> handshake(
    $0.LanguageHandshakeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$handshake, request, options: options);
  }

  /// `GetRequiredPlugins` computes the complete set of anticipated [plugins](plugins) required by a Pulumi program.
  /// Among other things, it is intended to be used to pre-install plugins before running a program with
  /// [](pulumirpc.LanguageRuntime.Run), to avoid the need to install them on-demand in response to [resource
  /// registrations](resource-registration) sent back from the running program to the engine.
  ///
  /// :::{important}
  /// The use of `GetRequiredPlugins` is deprecated in favour of [](pulumirpc.LanguageRuntime.GetRequiredPackages),
  /// which returns more granular information about which plugins are required by which packages.
  /// :::
  @$core.Deprecated('This method is deprecated')
  $grpc.ResponseFuture<$0.GetRequiredPluginsResponse> getRequiredPlugins(
    $0.GetRequiredPluginsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getRequiredPlugins, request, options: options);
  }

  /// `GetRequiredPackages` computes the complete set of anticipated [packages](pulumirpc.PackageDependency) required
  /// by a program or plugin. It is used to pre-install packages before running a program with
  /// [](pulumirpc.LanguageRuntime.Run), to avoid the need to install them on-demand in response to [resource
  /// registrations](resource-registration) sent back from the running program to the engine. Moreover, when importing
  /// resources into a stack, it is used to determine which plugins are required to service the import of a given
  /// resource, since given the presence of [parameterized providers](parameterized-providers), it is not in general
  /// true that a package name corresponds 1:1 with a plugin name. It replaces
  /// [](pulumirpc.LanguageRuntime.GetRequiredPlugins) in the face of [parameterized
  /// providers](parameterized-providers), which as mentioned above can enable multiple instances of the same plugin to
  /// provide multiple packages.
  $grpc.ResponseFuture<$0.GetRequiredPackagesResponse> getRequiredPackages(
    $0.GetRequiredPackagesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getRequiredPackages, request, options: options);
  }

  /// `Run` executes a Pulumi program, returning information about whether or not the program produced an error.
  $grpc.ResponseFuture<$0.RunResponse> run(
    $0.RunRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$run, request, options: options);
  }

  /// `GetPluginInfo` returns information about the [plugin](plugins) implementing this language runtime.
  $grpc.ResponseFuture<$2.PluginInfo> getPluginInfo(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getPluginInfo, request, options: options);
  }

  /// `InstallDependencies` accepts a request specifying a Pulumi project and program that can be executed with
  /// [](pulumirpc.LanguageRuntime.Run) and installs the dependencies for that program (e.g. by running `npm install`
  /// for NodeJS, or `pip install` for Python). Since dependency installation could take a while, and callers may wish
  /// to report on its progress, this method returns a stream of [](pulumirpc.InstallDependenciesResponse) messages
  /// containing information about standard error and output.
  $grpc.ResponseStream<$0.InstallDependenciesResponse> installDependencies(
    $0.InstallDependenciesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$installDependencies, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// `RuntimeOptionsPrompts` accepts a request specifying a Pulumi project and returns a list of additional prompts to
  /// ask during `pulumi new`.
  $grpc.ResponseFuture<$0.RuntimeOptionsResponse> runtimeOptionsPrompts(
    $0.RuntimeOptionsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$runtimeOptionsPrompts, request, options: options);
  }

  /// `Template` allows the language runtime to perform additional templating on a newly instantiated project template.
  /// For example the Python runtime might want to convert a requirements.txt into a pyproject.toml suitable for use
  /// with uv or poetry.
  $grpc.ResponseFuture<$0.TemplateResponse> template(
    $0.TemplateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$template, request, options: options);
  }

  /// `About` returns information about the language runtime being used.
  $grpc.ResponseFuture<$0.AboutResponse> about(
    $0.AboutRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$about, request, options: options);
  }

  /// `GetProgramDependencies` computes the set of language-level dependencies (e.g. NPM packages for NodeJS, or Maven
  /// libraries for Java) required by a program.
  $grpc.ResponseFuture<$0.GetProgramDependenciesResponse>
      getProgramDependencies(
    $0.GetProgramDependenciesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getProgramDependencies, request,
        options: options);
  }

  /// `RunPlugin` is used to execute a program written in this host's language that implements a Pulumi
  /// [plugin](plugins). It is to plugins what [](pulumirpc.LanguageRuntime.Run) is to programs. Since a plugin is not
  /// expected to terminate until instructed/for a long time, this method returns a stream of
  /// [](pulumirpc.RunPluginResponse) messages containing information about standard error and output, as well as the
  /// exit code of the plugin when it does terminate.
  $grpc.ResponseStream<$0.RunPluginResponse> runPlugin(
    $0.RunPluginRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$runPlugin, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// `GenerateProgram` generates code in this host's language that implements the given [PCL](pcl) program. Unlike
  /// [](pulumirpc.LanguageRuntime.GenerateProject), this method *only* generates program code, and does not e.g.
  /// generate a `package.json` for a NodeJS project that details how to run that code.
  /// [](pulumirpc.LanguageRuntime.GenerateProject), this method underpins ["programgen"](programgen) and the main
  /// functionality powering `pulumi convert`.
  $grpc.ResponseFuture<$0.GenerateProgramResponse> generateProgram(
    $0.GenerateProgramRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$generateProgram, request, options: options);
  }

  /// `GenerateProject` generates code in this host's language that implements the given [PCL](pcl) program and wraps
  /// it in some language-specific notion of a "project", where a project is a buildable or runnable artifact. In this
  /// sense, `GenerateProject`'s output is a superset of that of [](pulumirpc.LanguageRuntime.GenerateProgram). For
  /// instance, when generating a NodeJS project, this method might generate a corresponding `package.json` file, as
  /// well as the relevant NodeJS program code. Along with [](pulumirpc.LanguageRuntime.GenerateProgram), this method
  /// underpins ["programgen"](programgen) and the main functionality powering `pulumi convert`.
  $grpc.ResponseFuture<$0.GenerateProjectResponse> generateProject(
    $0.GenerateProjectRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$generateProject, request, options: options);
  }

  /// `GeneratePackage` generates code in this host's language that implements an [SDK](sdkgen) ("sdkgen") for the
  /// given Pulumi package, as specified by a [schema](schema).
  $grpc.ResponseFuture<$0.GeneratePackageResponse> generatePackage(
    $0.GeneratePackageRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$generatePackage, request, options: options);
  }

  /// `Pack` accepts a request specifying a generated SDK package and packs it into a language-specific artifact. For
  /// instance, in the case of Java, it might produce a JAR file from a list of `.java` sources; in the case of NodeJS,
  /// a `.tgz` file might be produced from a list of `.js` sources; and so on. Presently, `Pack` is primarily used in
  /// [language conformance tests](language-conformance-tests), though it is intended to be used more widely in future
  /// to standardise e.g. provider publishing workflows.
  $grpc.ResponseFuture<$0.PackResponse> pack(
    $0.PackRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$pack, request, options: options);
  }

  /// `Link` links local dependencies into a project (program or plugin). The dependencies can be binary artifacts such
  /// as wheel or tar.gz files, or source directories. `Link` will update the language specific project files, such as
  /// `package.json`, `pyproject.toml`, `go.mod`, etc, to include the dependency. `Link` returns instructions for the
  /// user on how to use the linked package in the project.
  $grpc.ResponseFuture<$0.LinkResponse> link(
    $0.LinkRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$link, request, options: options);
  }

  /// `Cancel` signals the language runtime to gracefully shut down and abort any ongoing operations.
  /// Operations aborted in this way will return an error.
  $grpc.ResponseFuture<$1.Empty> cancel(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cancel, request, options: options);
  }

  // method descriptors

  static final _$handshake = $grpc.ClientMethod<$0.LanguageHandshakeRequest,
          $0.LanguageHandshakeResponse>(
      '/pulumirpc.LanguageRuntime/Handshake',
      ($0.LanguageHandshakeRequest value) => value.writeToBuffer(),
      $0.LanguageHandshakeResponse.fromBuffer);
  static final _$getRequiredPlugins = $grpc.ClientMethod<
          $0.GetRequiredPluginsRequest, $0.GetRequiredPluginsResponse>(
      '/pulumirpc.LanguageRuntime/GetRequiredPlugins',
      ($0.GetRequiredPluginsRequest value) => value.writeToBuffer(),
      $0.GetRequiredPluginsResponse.fromBuffer);
  static final _$getRequiredPackages = $grpc.ClientMethod<
          $0.GetRequiredPackagesRequest, $0.GetRequiredPackagesResponse>(
      '/pulumirpc.LanguageRuntime/GetRequiredPackages',
      ($0.GetRequiredPackagesRequest value) => value.writeToBuffer(),
      $0.GetRequiredPackagesResponse.fromBuffer);
  static final _$run = $grpc.ClientMethod<$0.RunRequest, $0.RunResponse>(
      '/pulumirpc.LanguageRuntime/Run',
      ($0.RunRequest value) => value.writeToBuffer(),
      $0.RunResponse.fromBuffer);
  static final _$getPluginInfo = $grpc.ClientMethod<$1.Empty, $2.PluginInfo>(
      '/pulumirpc.LanguageRuntime/GetPluginInfo',
      ($1.Empty value) => value.writeToBuffer(),
      $2.PluginInfo.fromBuffer);
  static final _$installDependencies = $grpc.ClientMethod<
          $0.InstallDependenciesRequest, $0.InstallDependenciesResponse>(
      '/pulumirpc.LanguageRuntime/InstallDependencies',
      ($0.InstallDependenciesRequest value) => value.writeToBuffer(),
      $0.InstallDependenciesResponse.fromBuffer);
  static final _$runtimeOptionsPrompts =
      $grpc.ClientMethod<$0.RuntimeOptionsRequest, $0.RuntimeOptionsResponse>(
          '/pulumirpc.LanguageRuntime/RuntimeOptionsPrompts',
          ($0.RuntimeOptionsRequest value) => value.writeToBuffer(),
          $0.RuntimeOptionsResponse.fromBuffer);
  static final _$template =
      $grpc.ClientMethod<$0.TemplateRequest, $0.TemplateResponse>(
          '/pulumirpc.LanguageRuntime/Template',
          ($0.TemplateRequest value) => value.writeToBuffer(),
          $0.TemplateResponse.fromBuffer);
  static final _$about = $grpc.ClientMethod<$0.AboutRequest, $0.AboutResponse>(
      '/pulumirpc.LanguageRuntime/About',
      ($0.AboutRequest value) => value.writeToBuffer(),
      $0.AboutResponse.fromBuffer);
  static final _$getProgramDependencies = $grpc.ClientMethod<
          $0.GetProgramDependenciesRequest, $0.GetProgramDependenciesResponse>(
      '/pulumirpc.LanguageRuntime/GetProgramDependencies',
      ($0.GetProgramDependenciesRequest value) => value.writeToBuffer(),
      $0.GetProgramDependenciesResponse.fromBuffer);
  static final _$runPlugin =
      $grpc.ClientMethod<$0.RunPluginRequest, $0.RunPluginResponse>(
          '/pulumirpc.LanguageRuntime/RunPlugin',
          ($0.RunPluginRequest value) => value.writeToBuffer(),
          $0.RunPluginResponse.fromBuffer);
  static final _$generateProgram =
      $grpc.ClientMethod<$0.GenerateProgramRequest, $0.GenerateProgramResponse>(
          '/pulumirpc.LanguageRuntime/GenerateProgram',
          ($0.GenerateProgramRequest value) => value.writeToBuffer(),
          $0.GenerateProgramResponse.fromBuffer);
  static final _$generateProject =
      $grpc.ClientMethod<$0.GenerateProjectRequest, $0.GenerateProjectResponse>(
          '/pulumirpc.LanguageRuntime/GenerateProject',
          ($0.GenerateProjectRequest value) => value.writeToBuffer(),
          $0.GenerateProjectResponse.fromBuffer);
  static final _$generatePackage =
      $grpc.ClientMethod<$0.GeneratePackageRequest, $0.GeneratePackageResponse>(
          '/pulumirpc.LanguageRuntime/GeneratePackage',
          ($0.GeneratePackageRequest value) => value.writeToBuffer(),
          $0.GeneratePackageResponse.fromBuffer);
  static final _$pack = $grpc.ClientMethod<$0.PackRequest, $0.PackResponse>(
      '/pulumirpc.LanguageRuntime/Pack',
      ($0.PackRequest value) => value.writeToBuffer(),
      $0.PackResponse.fromBuffer);
  static final _$link = $grpc.ClientMethod<$0.LinkRequest, $0.LinkResponse>(
      '/pulumirpc.LanguageRuntime/Link',
      ($0.LinkRequest value) => value.writeToBuffer(),
      $0.LinkResponse.fromBuffer);
  static final _$cancel = $grpc.ClientMethod<$1.Empty, $1.Empty>(
      '/pulumirpc.LanguageRuntime/Cancel',
      ($1.Empty value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.LanguageRuntime')
abstract class LanguageRuntimeServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.LanguageRuntime';

  LanguageRuntimeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LanguageHandshakeRequest,
            $0.LanguageHandshakeResponse>(
        'Handshake',
        handshake_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.LanguageHandshakeRequest.fromBuffer(value),
        ($0.LanguageHandshakeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequiredPluginsRequest,
            $0.GetRequiredPluginsResponse>(
        'GetRequiredPlugins',
        getRequiredPlugins_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetRequiredPluginsRequest.fromBuffer(value),
        ($0.GetRequiredPluginsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequiredPackagesRequest,
            $0.GetRequiredPackagesResponse>(
        'GetRequiredPackages',
        getRequiredPackages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetRequiredPackagesRequest.fromBuffer(value),
        ($0.GetRequiredPackagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunRequest, $0.RunResponse>(
        'Run',
        run_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RunRequest.fromBuffer(value),
        ($0.RunResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.PluginInfo>(
        'GetPluginInfo',
        getPluginInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.PluginInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InstallDependenciesRequest,
            $0.InstallDependenciesResponse>(
        'InstallDependencies',
        installDependencies_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.InstallDependenciesRequest.fromBuffer(value),
        ($0.InstallDependenciesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RuntimeOptionsRequest,
            $0.RuntimeOptionsResponse>(
        'RuntimeOptionsPrompts',
        runtimeOptionsPrompts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RuntimeOptionsRequest.fromBuffer(value),
        ($0.RuntimeOptionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TemplateRequest, $0.TemplateResponse>(
        'Template',
        template_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TemplateRequest.fromBuffer(value),
        ($0.TemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AboutRequest, $0.AboutResponse>(
        'About',
        about_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AboutRequest.fromBuffer(value),
        ($0.AboutResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetProgramDependenciesRequest,
            $0.GetProgramDependenciesResponse>(
        'GetProgramDependencies',
        getProgramDependencies_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetProgramDependenciesRequest.fromBuffer(value),
        ($0.GetProgramDependenciesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunPluginRequest, $0.RunPluginResponse>(
        'RunPlugin',
        runPlugin_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.RunPluginRequest.fromBuffer(value),
        ($0.RunPluginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GenerateProgramRequest,
            $0.GenerateProgramResponse>(
        'GenerateProgram',
        generateProgram_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GenerateProgramRequest.fromBuffer(value),
        ($0.GenerateProgramResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GenerateProjectRequest,
            $0.GenerateProjectResponse>(
        'GenerateProject',
        generateProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GenerateProjectRequest.fromBuffer(value),
        ($0.GenerateProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GeneratePackageRequest,
            $0.GeneratePackageResponse>(
        'GeneratePackage',
        generatePackage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GeneratePackageRequest.fromBuffer(value),
        ($0.GeneratePackageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PackRequest, $0.PackResponse>(
        'Pack',
        pack_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PackRequest.fromBuffer(value),
        ($0.PackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LinkRequest, $0.LinkResponse>(
        'Link',
        link_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LinkRequest.fromBuffer(value),
        ($0.LinkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.Empty>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.LanguageHandshakeResponse> handshake_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.LanguageHandshakeRequest> $request) async {
    return handshake($call, await $request);
  }

  $async.Future<$0.LanguageHandshakeResponse> handshake(
      $grpc.ServiceCall call, $0.LanguageHandshakeRequest request);

  $async.Future<$0.GetRequiredPluginsResponse> getRequiredPlugins_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetRequiredPluginsRequest> $request) async {
    return getRequiredPlugins($call, await $request);
  }

  $async.Future<$0.GetRequiredPluginsResponse> getRequiredPlugins(
      $grpc.ServiceCall call, $0.GetRequiredPluginsRequest request);

  $async.Future<$0.GetRequiredPackagesResponse> getRequiredPackages_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetRequiredPackagesRequest> $request) async {
    return getRequiredPackages($call, await $request);
  }

  $async.Future<$0.GetRequiredPackagesResponse> getRequiredPackages(
      $grpc.ServiceCall call, $0.GetRequiredPackagesRequest request);

  $async.Future<$0.RunResponse> run_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.RunRequest> $request) async {
    return run($call, await $request);
  }

  $async.Future<$0.RunResponse> run(
      $grpc.ServiceCall call, $0.RunRequest request);

  $async.Future<$2.PluginInfo> getPluginInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getPluginInfo($call, await $request);
  }

  $async.Future<$2.PluginInfo> getPluginInfo(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Stream<$0.InstallDependenciesResponse> installDependencies_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.InstallDependenciesRequest> $request) async* {
    yield* installDependencies($call, await $request);
  }

  $async.Stream<$0.InstallDependenciesResponse> installDependencies(
      $grpc.ServiceCall call, $0.InstallDependenciesRequest request);

  $async.Future<$0.RuntimeOptionsResponse> runtimeOptionsPrompts_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.RuntimeOptionsRequest> $request) async {
    return runtimeOptionsPrompts($call, await $request);
  }

  $async.Future<$0.RuntimeOptionsResponse> runtimeOptionsPrompts(
      $grpc.ServiceCall call, $0.RuntimeOptionsRequest request);

  $async.Future<$0.TemplateResponse> template_Pre($grpc.ServiceCall $call,
      $async.Future<$0.TemplateRequest> $request) async {
    return template($call, await $request);
  }

  $async.Future<$0.TemplateResponse> template(
      $grpc.ServiceCall call, $0.TemplateRequest request);

  $async.Future<$0.AboutResponse> about_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.AboutRequest> $request) async {
    return about($call, await $request);
  }

  $async.Future<$0.AboutResponse> about(
      $grpc.ServiceCall call, $0.AboutRequest request);

  $async.Future<$0.GetProgramDependenciesResponse> getProgramDependencies_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetProgramDependenciesRequest> $request) async {
    return getProgramDependencies($call, await $request);
  }

  $async.Future<$0.GetProgramDependenciesResponse> getProgramDependencies(
      $grpc.ServiceCall call, $0.GetProgramDependenciesRequest request);

  $async.Stream<$0.RunPluginResponse> runPlugin_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RunPluginRequest> $request) async* {
    yield* runPlugin($call, await $request);
  }

  $async.Stream<$0.RunPluginResponse> runPlugin(
      $grpc.ServiceCall call, $0.RunPluginRequest request);

  $async.Future<$0.GenerateProgramResponse> generateProgram_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GenerateProgramRequest> $request) async {
    return generateProgram($call, await $request);
  }

  $async.Future<$0.GenerateProgramResponse> generateProgram(
      $grpc.ServiceCall call, $0.GenerateProgramRequest request);

  $async.Future<$0.GenerateProjectResponse> generateProject_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GenerateProjectRequest> $request) async {
    return generateProject($call, await $request);
  }

  $async.Future<$0.GenerateProjectResponse> generateProject(
      $grpc.ServiceCall call, $0.GenerateProjectRequest request);

  $async.Future<$0.GeneratePackageResponse> generatePackage_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GeneratePackageRequest> $request) async {
    return generatePackage($call, await $request);
  }

  $async.Future<$0.GeneratePackageResponse> generatePackage(
      $grpc.ServiceCall call, $0.GeneratePackageRequest request);

  $async.Future<$0.PackResponse> pack_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.PackRequest> $request) async {
    return pack($call, await $request);
  }

  $async.Future<$0.PackResponse> pack(
      $grpc.ServiceCall call, $0.PackRequest request);

  $async.Future<$0.LinkResponse> link_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LinkRequest> $request) async {
    return link($call, await $request);
  }

  $async.Future<$0.LinkResponse> link(
      $grpc.ServiceCall call, $0.LinkRequest request);

  $async.Future<$1.Empty> cancel_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return cancel($call, await $request);
  }

  $async.Future<$1.Empty> cancel($grpc.ServiceCall call, $1.Empty request);
}
