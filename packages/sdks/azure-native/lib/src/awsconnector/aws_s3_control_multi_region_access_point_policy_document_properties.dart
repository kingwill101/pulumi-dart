// ignore_for_file: unused_element, unnecessary_cast

import 'established_multi_region_access_point_policy.dart';
import 'proposed_multi_region_access_point_policy.dart';

/// Definition of awsS3ControlMultiRegionAccessPointPolicyDocument
class AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties {
  /// <p>The last established policy for the Multi-Region Access Point.</p>
  final EstablishedMultiRegionAccessPointPolicy? established;
  /// <p>The proposed policy for the Multi-Region Access Point.</p>
  final ProposedMultiRegionAccessPointPolicy? proposed;

  /// Creates a new [AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties].
  /// [established] <p>The last established policy for the Multi-Region Access Point.</p>
  /// [proposed] <p>The proposed policy for the Multi-Region Access Point.</p>
  AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties({
    this.established,
    this.proposed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'established': ?established == null ? null : established!.toMap(),
      'proposed': ?proposed == null ? null : proposed!.toMap(),
    };
  }

  factory AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties.fromMap(Map<String, dynamic> map) {
    return AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties(
      established: map['established'] == null ? null : EstablishedMultiRegionAccessPointPolicy.fromMap((map['established'] as Map).cast<String, dynamic>()),
      proposed: map['proposed'] == null ? null : ProposedMultiRegionAccessPointPolicy.fromMap((map['proposed'] as Map).cast<String, dynamic>()),
    );
  }
}

