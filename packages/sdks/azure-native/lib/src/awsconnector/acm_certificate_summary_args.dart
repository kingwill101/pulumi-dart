// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acm_certificate_summary_properties.dart';

/// {@template pulumi_awsconnector_acm_certificate_summary_args_doc}
/// The set of arguments for AcmCertificateSummary.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_acm_certificate_summary_args_doc}
class AcmCertificateSummaryArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of AcmCertificateSummary
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<AcmCertificateSummaryProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AcmCertificateSummaryArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of AcmCertificateSummary
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  AcmCertificateSummaryArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<AcmCertificateSummaryProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<AcmCertificateSummaryProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<AcmCertificateSummaryProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AcmCertificateSummaryArgs.fromMap(Map<String, dynamic> map) {
    return AcmCertificateSummaryArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AcmCertificateSummaryProperties>(AcmCertificateSummaryProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

