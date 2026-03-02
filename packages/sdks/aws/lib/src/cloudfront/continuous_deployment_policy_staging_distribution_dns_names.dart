// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContinuousDeploymentPolicyStagingDistributionDnsNames {
  /// A list of CloudFront domain names for the staging distribution.
  final pulumi.Input<List<String>>? items;
  /// Number of CloudFront domain names in the staging distribution.
  final pulumi.Input<int> quantity;

  /// Creates a new [ContinuousDeploymentPolicyStagingDistributionDnsNames].
  /// [items] A list of CloudFront domain names for the staging distribution.
  /// [quantity] Number of CloudFront domain names in the staging distribution.
  ContinuousDeploymentPolicyStagingDistributionDnsNames({
    this.items,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
      'quantity': quantity,
    };
  }

  factory ContinuousDeploymentPolicyStagingDistributionDnsNames.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyStagingDistributionDnsNames(
      items: map['items'] == null ? null : (((map['items'] as List).cast<String>()).input()).input(),
      quantity: (map['quantity'] as int).input(),
    );
  }
}

