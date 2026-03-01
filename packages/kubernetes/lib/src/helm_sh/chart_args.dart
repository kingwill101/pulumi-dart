// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fetch_opts.dart';

/// {@template pulumi_helm_sh_v3_chart_args_doc}
/// The set of arguments for Chart.
/// {@endtemplate}
/// {@macro pulumi_helm_sh_v3_chart_args_doc}
class ChartArgs {
  /// The name of the chart to deploy. If [repo] is provided, this chart name will be prefixed by the repo name. Example: repo: "stable", chart: "nginx-ingress" -> "stable/nginx-ingress" Example: chart: "stable/nginx-ingress" -> "stable/nginx-ingress"
  ///
  /// Required if specifying `ChartOpts` for a remote chart.
  final pulumi.Input<String>? chart;
  /// Additional options to customize the fetching of the Helm chart.
  final pulumi.Input<FetchOpts>? fetchOpts;
  /// The optional namespace to install chart resources into.
  final pulumi.Input<String>? namespace;
  /// The path to the chart directory which contains the `Chart.yaml` file.
  ///
  /// Required if specifying `LocalChartOpts`.
  final pulumi.Input<String>? path;
  /// The repository name of the chart to deploy. Example: "stable".
  ///
  /// Used only when specifying options for a remote chart.
  final pulumi.Input<String>? repo;
  /// An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// Optional array of transformations to apply to resources that will be created by this chart prior to creation. Allows customization of the chart behaviour without directly modifying the chart itself.
  final pulumi.Input<List<dynamic>>? transformations;
  /// Overrides for chart values.
  final pulumi.Input<Map<String, dynamic>>? values;
  /// The version of the chart to deploy. If not provided, the latest version will be deployed.
  final pulumi.Input<String>? version;

  /// Creates a new [ChartArgs].
  /// [chart] The name of the chart to deploy. If [repo] is provided, this chart name will be prefixed by the repo name. Example: repo: "stable", chart: "nginx-ingress" -> "stable/nginx-ingress" Example: chart: "stable/nginx-ingress" -> "stable/nginx-ingress"
  /// [fetchOpts] Additional options to customize the fetching of the Helm chart.
  /// [namespace] The optional namespace to install chart resources into.
  /// [path] The path to the chart directory which contains the `Chart.yaml` file.
  /// [repo] The repository name of the chart to deploy. Example: "stable".
  /// [resourcePrefix] An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  /// [transformations] Optional array of transformations to apply to resources that will be created by this chart prior to creation. Allows customization of the chart behaviour without directly modifying the chart itself.
  /// [values] Overrides for chart values.
  /// [version] The version of the chart to deploy. If not provided, the latest version will be deployed.
  ChartArgs({
    String? chart,
    FetchOpts? fetchOpts,
    String? namespace,
    String? path,
    String? repo,
    String? resourcePrefix,
    List<dynamic>? transformations,
    Map<String, dynamic>? values,
    String? version,
  }) :
      chart = pulumi.Input.asOptionalInput<String>(chart),
      fetchOpts = pulumi.Input.asOptionalInput<FetchOpts>(fetchOpts),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      path = pulumi.Input.asOptionalInput<String>(path),
      repo = pulumi.Input.asOptionalInput<String>(repo),
      resourcePrefix = pulumi.Input.asOptionalInput<String>(resourcePrefix),
      transformations = pulumi.Input.asOptionalInput<List<dynamic>>(transformations),
      values = pulumi.Input.asOptionalInput<Map<String, dynamic>>(values),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chart': ?chart,
      'fetchOpts': ?pulumi.Input.mapOptionalInputValue<FetchOpts, Map<String, dynamic>>(fetchOpts, (value) => value.toMap()),
      'namespace': ?namespace,
      'path': ?path,
      'repo': ?repo,
      'resourcePrefix': ?resourcePrefix,
      'transformations': ?transformations,
      'values': ?values,
      'version': ?version,
    };
  }

  factory ChartArgs.fromMap(Map<String, dynamic> map) {
    return ChartArgs(
      chart: map['chart'] == null ? null : map['chart'] as String,
      fetchOpts: map['fetchOpts'] == null ? null : FetchOpts.fromMap((map['fetchOpts'] as Map).cast<String, dynamic>()),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      repo: map['repo'] == null ? null : map['repo'] as String,
      resourcePrefix: map['resourcePrefix'] == null ? null : map['resourcePrefix'] as String,
      transformations: map['transformations'] == null ? null : (map['transformations'] as List).cast<dynamic>(),
      values: map['values'] == null ? null : (map['values'] as Map).cast<String, dynamic>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

