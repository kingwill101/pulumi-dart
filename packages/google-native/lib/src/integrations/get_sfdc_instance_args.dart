// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_sfdc_instance_args_doc}
/// Arguments for getSfdcInstance.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_sfdc_instance_args_doc}
class GetSfdcInstanceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sfdcInstanceId;

  /// Creates a new [GetSfdcInstanceArgs].
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [sfdcInstanceId] Required.
  GetSfdcInstanceArgs({
    required String location,
    required String productId,
    String? project,
    required String sfdcInstanceId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project),
      sfdcInstanceId = pulumi.Input.asInput<String>(sfdcInstanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'productId': productId,
      'project': ?project,
      'sfdcInstanceId': sfdcInstanceId,
    };
  }

  factory GetSfdcInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSfdcInstanceArgs(
      location: map['location'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sfdcInstanceId: map['sfdcInstanceId'] as String,
    );
  }
}

