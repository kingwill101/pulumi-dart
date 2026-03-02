// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sage_maker_notebook_instance_summary_properties.dart';

/// {@template pulumi_awsconnector_sage_maker_notebook_instance_summary_args_doc}
/// The set of arguments for SageMakerNotebookInstanceSummary.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_sage_maker_notebook_instance_summary_args_doc}
class SageMakerNotebookInstanceSummaryArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of SageMakerNotebookInstanceSummary
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<SageMakerNotebookInstanceSummaryProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SageMakerNotebookInstanceSummaryArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of SageMakerNotebookInstanceSummary
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  SageMakerNotebookInstanceSummaryArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<SageMakerNotebookInstanceSummaryProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SageMakerNotebookInstanceSummaryArgs.fromMap(Map<String, dynamic> map) {
    return SageMakerNotebookInstanceSummaryArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (SageMakerNotebookInstanceSummaryProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

