// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_mse_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// The alias name of MSE Cluster.
  final pulumi.Input<String>? clusterAliasName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of MSE Cluster ids. It is formatted to `<instance_id>`
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter the results by the cluster alias name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The extended request parameters. The JSON format is supported.
  final pulumi.Input<String>? requestPars;
  /// The status of MSE Cluster. Valid: `DESTROY_FAILED`, `DESTROY_ING`, `DESTROY_SUCCESS`, `INIT_FAILED`, `INIT_ING`, `INIT_SUCCESS`, `INIT_TIME_OUT`, `RESTART_FAILED`, `RESTART_ING`, `RESTART_SUCCESS`, `SCALE_FAILED`, `SCALE_ING`, `SCALE_SUCCESS`
  final pulumi.Input<String>? status;

  /// Creates a new [GetClustersArgs].
  /// [clusterAliasName] The alias name of MSE Cluster.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of MSE Cluster ids. It is formatted to `<instance_id>`
  /// [nameRegex] A regex string to filter the results by the cluster alias name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [requestPars] The extended request parameters. The JSON format is supported.
  /// [status] The status of MSE Cluster. Valid: `DESTROY_FAILED`, `DESTROY_ING`, `DESTROY_SUCCESS`, `INIT_FAILED`, `INIT_ING`, `INIT_SUCCESS`, `INIT_TIME_OUT`, `RESTART_FAILED`, `RESTART_ING`, `RESTART_SUCCESS`, `SCALE_FAILED`, `SCALE_ING`, `SCALE_SUCCESS`
  GetClustersArgs({
    pulumi.Output<String>? clusterAliasName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? requestPars,
    pulumi.Output<String>? status,
  }) :
      clusterAliasName = pulumi.Input.asOptionalInput<String>(clusterAliasName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      requestPars = pulumi.Input.asOptionalInput<String>(requestPars),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAliasName': ?clusterAliasName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'requestPars': ?requestPars,
      'status': ?status,
    };
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      clusterAliasName: map['clusterAliasName'] == null ? null : pulumi.Output.create<String>(map['clusterAliasName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      requestPars: map['requestPars'] == null ? null : pulumi.Output.create<String>(map['requestPars'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

