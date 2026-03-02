// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsan_get_elastic_san_args_doc}
/// Arguments for getElasticSan.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_get_elastic_san_args_doc}
class GetElasticSanArgs {
  /// The name of the ElasticSan.
  final pulumi.Input<String> elasticSanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticSanArgs].
  /// [elasticSanName] The name of the ElasticSan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticSanArgs({
    required this.elasticSanName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanName': elasticSanName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticSanArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticSanArgs(
      elasticSanName: (map['elasticSanName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

