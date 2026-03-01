// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_cluster_auth_get_cluster_auth_args_doc}
/// Arguments for getClusterAuth.
/// {@endtemplate}
/// {@macro pulumi_eks_get_cluster_auth_get_cluster_auth_args_doc}
class GetClusterAuthArgs {
  /// Name of the cluster
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetClusterAuthArgs].
  /// [name] Name of the cluster
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetClusterAuthArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetClusterAuthArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterAuthArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

