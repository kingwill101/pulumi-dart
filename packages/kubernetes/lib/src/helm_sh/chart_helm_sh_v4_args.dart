// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'post_renderer.dart';
import 'repository_opts_helm_sh_v4.dart';

/// {@template pulumi_helm_sh_v4_chart_helm_sh_v4_args_doc}
/// The set of arguments for Chart.
/// {@endtemplate}
/// {@macro pulumi_helm_sh_v4_chart_helm_sh_v4_args_doc}
class ChartHelmShV4Args {
  /// Chart name to be installed. A path may be used.
  final pulumi.Input<String> chart;
  /// Run helm dependency update before installing the chart.
  final pulumi.Input<bool>? dependencyUpdate;
  /// Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored.
  final pulumi.Input<bool>? devel;
  /// Location of public keys used for verification. Used only if `verify` is true
  final pulumi.Input<dynamic>? keyring;
  /// Release name.
  final pulumi.Input<String>? name;
  /// Namespace for the release.
  final pulumi.Input<String>? namespace;
  /// Use insecure HTTP for the chart download instead of HTTPS.
  final pulumi.Input<bool>? plainHttp;
  /// Specification defining the post-renderer to use.
  final pulumi.Input<PostRenderer>? postRenderer;
  /// Specification defining the Helm chart repository to use.
  final pulumi.Input<RepositoryOptsHelmShV4>? repositoryOpts;
  /// An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo:resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// By default, the provider waits until all resources are in a ready state before marking the release as successful. Setting this to true will skip such await logic.
  final pulumi.Input<bool>? skipAwait;
  /// If set, no CRDs will be installed. By default, CRDs are installed if not already present.
  final pulumi.Input<bool>? skipCrds;
  /// List of assets (raw yaml files). Content is read and merged with values.
  final pulumi.Input<List<dynamic>>? valueYamlFiles;
  /// Custom values set for the release.
  final pulumi.Input<Map<String, dynamic>>? values;
  /// Verify the chart's integrity.
  final pulumi.Input<bool>? verify;
  /// Specify the chart version to install. If this is not specified, the latest version is installed.
  final pulumi.Input<String>? version;

  /// Creates a new [ChartHelmShV4Args].
  /// [chart] Chart name to be installed. A path may be used.
  /// [dependencyUpdate] Run helm dependency update before installing the chart.
  /// [devel] Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored.
  /// [keyring] Location of public keys used for verification. Used only if `verify` is true
  /// [name] Release name.
  /// [namespace] Namespace for the release.
  /// [plainHttp] Use insecure HTTP for the chart download instead of HTTPS.
  /// [postRenderer] Specification defining the post-renderer to use.
  /// [repositoryOpts] Specification defining the Helm chart repository to use.
  /// [resourcePrefix] An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo:resourceName".
  /// [skipAwait] By default, the provider waits until all resources are in a ready state before marking the release as successful. Setting this to true will skip such await logic.
  /// [skipCrds] If set, no CRDs will be installed. By default, CRDs are installed if not already present.
  /// [valueYamlFiles] List of assets (raw yaml files). Content is read and merged with values.
  /// [values] Custom values set for the release.
  /// [verify] Verify the chart's integrity.
  /// [version] Specify the chart version to install. If this is not specified, the latest version is installed.
  ChartHelmShV4Args({
    required String chart,
    bool? dependencyUpdate,
    bool? devel,
    dynamic keyring,
    String? name,
    String? namespace,
    bool? plainHttp,
    PostRenderer? postRenderer,
    RepositoryOptsHelmShV4? repositoryOpts,
    String? resourcePrefix,
    bool? skipAwait,
    bool? skipCrds,
    List<dynamic>? valueYamlFiles,
    Map<String, dynamic>? values,
    bool? verify,
    String? version,
  }) :
      chart = pulumi.Input.asInput<String>(chart),
      dependencyUpdate = pulumi.Input.asOptionalInput<bool>(dependencyUpdate),
      devel = pulumi.Input.asOptionalInput<bool>(devel),
      keyring = pulumi.Input.asOptionalInput<dynamic>(keyring),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      plainHttp = pulumi.Input.asOptionalInput<bool>(plainHttp),
      postRenderer = pulumi.Input.asOptionalInput<PostRenderer>(postRenderer),
      repositoryOpts = pulumi.Input.asOptionalInput<RepositoryOptsHelmShV4>(repositoryOpts),
      resourcePrefix = pulumi.Input.asOptionalInput<String>(resourcePrefix),
      skipAwait = pulumi.Input.asOptionalInput<bool>(skipAwait),
      skipCrds = pulumi.Input.asOptionalInput<bool>(skipCrds),
      valueYamlFiles = pulumi.Input.asOptionalInput<List<dynamic>>(valueYamlFiles),
      values = pulumi.Input.asOptionalInput<Map<String, dynamic>>(values),
      verify = pulumi.Input.asOptionalInput<bool>(verify),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chart': chart,
      'dependencyUpdate': ?dependencyUpdate,
      'devel': ?devel,
      'keyring': ?keyring,
      'name': ?name,
      'namespace': ?namespace,
      'plainHttp': ?plainHttp,
      'postRenderer': ?pulumi.Input.mapOptionalInputValue<PostRenderer, Map<String, dynamic>>(postRenderer, (value) => value.toMap()),
      'repositoryOpts': ?pulumi.Input.mapOptionalInputValue<RepositoryOptsHelmShV4, Map<String, dynamic>>(repositoryOpts, (value) => value.toMap()),
      'resourcePrefix': ?resourcePrefix,
      'skipAwait': ?skipAwait,
      'skipCrds': ?skipCrds,
      'valueYamlFiles': ?valueYamlFiles,
      'values': ?values,
      'verify': ?verify,
      'version': ?version,
    };
  }

  factory ChartHelmShV4Args.fromMap(Map<String, dynamic> map) {
    return ChartHelmShV4Args(
      chart: map['chart'] as String,
      dependencyUpdate: map['dependencyUpdate'] == null ? null : map['dependencyUpdate'] as bool,
      devel: map['devel'] == null ? null : map['devel'] as bool,
      keyring: map['keyring'] == null ? null : map['keyring'],
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      plainHttp: map['plainHttp'] == null ? null : map['plainHttp'] as bool,
      postRenderer: map['postRenderer'] == null ? null : PostRenderer.fromMap((map['postRenderer'] as Map).cast<String, dynamic>()),
      repositoryOpts: map['repositoryOpts'] == null ? null : RepositoryOptsHelmShV4.fromMap((map['repositoryOpts'] as Map).cast<String, dynamic>()),
      resourcePrefix: map['resourcePrefix'] == null ? null : map['resourcePrefix'] as String,
      skipAwait: map['skipAwait'] == null ? null : map['skipAwait'] as bool,
      skipCrds: map['skipCrds'] == null ? null : map['skipCrds'] as bool,
      valueYamlFiles: map['valueYamlFiles'] == null ? null : (map['valueYamlFiles'] as List).cast<dynamic>(),
      values: map['values'] == null ? null : (map['values'] as Map).cast<String, dynamic>(),
      verify: map['verify'] == null ? null : map['verify'] as bool,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

