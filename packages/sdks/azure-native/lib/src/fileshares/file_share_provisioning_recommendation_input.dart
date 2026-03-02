// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// File share provisioning parameters recommendation API input structure.
class FileShareProvisioningRecommendationInput {
  /// The desired provisioned storage size of the share in GiB. Will be use to calculate the values of remaining provisioning parameters.
  final pulumi.Input<int> provisionedStorageGiB;

  /// Creates a new [FileShareProvisioningRecommendationInput].
  /// [provisionedStorageGiB] The desired provisioned storage size of the share in GiB. Will be use to calculate the values of remaining provisioning parameters.
  FileShareProvisioningRecommendationInput({
    required this.provisionedStorageGiB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisionedStorageGiB': provisionedStorageGiB,
    };
  }

  factory FileShareProvisioningRecommendationInput.fromMap(Map<String, dynamic> map) {
    return FileShareProvisioningRecommendationInput(
      provisionedStorageGiB: (map['provisionedStorageGiB'] as int).input(),
    );
  }
}

