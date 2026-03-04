// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_provisioning_recommendation_input.dart';

/// {@template pulumi_fileshares_get_file_share_provisioning_recommendation_args_doc}
/// Arguments for getFileShareProvisioningRecommendation.
/// {@endtemplate}
/// {@macro pulumi_fileshares_get_file_share_provisioning_recommendation_args_doc}
class GetFileShareProvisioningRecommendationArgs {
  /// The name of the Azure region.
  final pulumi.Input<String> location;

  /// The properties of the file share provisioning recommendation input.
  final pulumi.Input<FileShareProvisioningRecommendationInput> properties;

  /// Creates a new [GetFileShareProvisioningRecommendationArgs].
  /// [location] The name of the Azure region.
  /// [properties] The properties of the file share provisioning recommendation input.
  GetFileShareProvisioningRecommendationArgs({
    required this.location,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'properties':
          pulumi.Input.mapInputValue<
            FileShareProvisioningRecommendationInput,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory GetFileShareProvisioningRecommendationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFileShareProvisioningRecommendationArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      properties: pulumi.Input.fromValue(
        FileShareProvisioningRecommendationInput.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
