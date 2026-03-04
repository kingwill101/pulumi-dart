// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_cluster_credential_get_cluster_credential_args_doc}
/// Arguments for getClusterCredential.
/// {@endtemplate}
/// {@macro pulumi_cs_get_cluster_credential_get_cluster_credential_args_doc}
class GetClusterCredentialArgs {
  /// The id of target cluster.
  final pulumi.Input<String> clusterId;

  /// File name where to save the returned KubeConfig (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Automatic expiration time of the returned credential. The valid value between `15` and `4320`, in minutes. When this field is omitted, the expiration time will be determined by the system automatically and the result will be in the attributed field `expiration`.
  final pulumi.Input<int>? temporaryDurationMinutes;

  /// Creates a new [GetClusterCredentialArgs].
  /// [clusterId] The id of target cluster.
  /// [outputFile] File name where to save the returned KubeConfig (after running `pulumi preview`).
  /// [temporaryDurationMinutes] Automatic expiration time of the returned credential. The valid value between `15` and `4320`, in minutes. When this field is omitted, the expiration time will be determined by the system automatically and the result will be in the attributed field `expiration`.
  GetClusterCredentialArgs({
    required this.clusterId,
    this.outputFile,
    this.temporaryDurationMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'outputFile': ?outputFile,
      'temporaryDurationMinutes': ?temporaryDurationMinutes,
    };
  }

  factory GetClusterCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterCredentialArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      temporaryDurationMinutes: (() {
        final guardedValue = map['temporaryDurationMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
