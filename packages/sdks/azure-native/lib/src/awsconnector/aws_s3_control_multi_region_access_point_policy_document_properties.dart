// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'established_multi_region_access_point_policy.dart';
import 'proposed_multi_region_access_point_policy.dart';

/// Definition of awsS3ControlMultiRegionAccessPointPolicyDocument
class AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties {
  /// &lt;p&gt;The last established policy for the Multi-Region Access Point.&lt;/p&gt;
  final pulumi.Input<EstablishedMultiRegionAccessPointPolicy>? established;
  /// &lt;p&gt;The proposed policy for the Multi-Region Access Point.&lt;/p&gt;
  final pulumi.Input<ProposedMultiRegionAccessPointPolicy>? proposed;

  /// Creates a new [AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties].
  /// [established] &lt;p&gt;The last established policy for the Multi-Region Access Point.&lt;/p&gt;
  /// [proposed] &lt;p&gt;The proposed policy for the Multi-Region Access Point.&lt;/p&gt;
  AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties({
    this.established,
    this.proposed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'established': ?pulumi.Input.mapOptionalInputValue<EstablishedMultiRegionAccessPointPolicy, Map<String, dynamic>>(established, (value) => value.toMap()),
      'proposed': ?pulumi.Input.mapOptionalInputValue<ProposedMultiRegionAccessPointPolicy, Map<String, dynamic>>(proposed, (value) => value.toMap()),
    };
  }

  factory AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties.fromMap(Map<String, dynamic> map) {
    return AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties(
      established: (() { final guardedValue = map['established']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EstablishedMultiRegionAccessPointPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proposed: (() { final guardedValue = map['proposed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProposedMultiRegionAccessPointPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

