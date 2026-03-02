// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'established_multi_region_access_point_policy_response.dart';
import 'proposed_multi_region_access_point_policy_response.dart';

/// Definition of awsS3ControlMultiRegionAccessPointPolicyDocument
class AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesResponse {
  /// <p>The last established policy for the Multi-Region Access Point.</p>
  final pulumi.Input<EstablishedMultiRegionAccessPointPolicyResponse>? established;
  /// <p>The proposed policy for the Multi-Region Access Point.</p>
  final pulumi.Input<ProposedMultiRegionAccessPointPolicyResponse>? proposed;

  /// Creates a new [AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesResponse].
  /// [established] <p>The last established policy for the Multi-Region Access Point.</p>
  /// [proposed] <p>The proposed policy for the Multi-Region Access Point.</p>
  AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesResponse({
    this.established,
    this.proposed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'established': ?pulumi.Input.mapOptionalInputValue<EstablishedMultiRegionAccessPointPolicyResponse, Map<String, dynamic>>(established, (value) => value.toMap()),
      'proposed': ?pulumi.Input.mapOptionalInputValue<ProposedMultiRegionAccessPointPolicyResponse, Map<String, dynamic>>(proposed, (value) => value.toMap()),
    };
  }

  factory AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesResponse(
      established: map['established'] == null ? null : (EstablishedMultiRegionAccessPointPolicyResponse.fromMap((map['established']! as Map).cast<String, dynamic>())).input(),
      proposed: map['proposed'] == null ? null : (ProposedMultiRegionAccessPointPolicyResponse.fromMap((map['proposed']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

