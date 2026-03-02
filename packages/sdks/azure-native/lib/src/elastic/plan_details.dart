// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan details of the monitor resource.
class PlanDetails {
  /// Offer ID of the plan
  final pulumi.Input<String>? offerID;
  /// Plan ID
  final pulumi.Input<String>? planID;
  /// Plan Name
  final pulumi.Input<String>? planName;
  /// Publisher ID of the plan
  final pulumi.Input<String>? publisherID;
  /// Term ID of the plan
  final pulumi.Input<String>? termID;

  /// Creates a new [PlanDetails].
  /// [offerID] Offer ID of the plan
  /// [planID] Plan ID
  /// [planName] Plan Name
  /// [publisherID] Publisher ID of the plan
  /// [termID] Term ID of the plan
  PlanDetails({
    this.offerID,
    this.planID,
    this.planName,
    this.publisherID,
    this.termID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerID': ?offerID,
      'planID': ?planID,
      'planName': ?planName,
      'publisherID': ?publisherID,
      'termID': ?termID,
    };
  }

  factory PlanDetails.fromMap(Map<String, dynamic> map) {
    return PlanDetails(
      offerID: map['offerID'] == null ? null : (map['offerID']! as String).input(),
      planID: map['planID'] == null ? null : (map['planID']! as String).input(),
      planName: map['planName'] == null ? null : (map['planName']! as String).input(),
      publisherID: map['publisherID'] == null ? null : (map['publisherID']! as String).input(),
      termID: map['termID'] == null ? null : (map['termID']! as String).input(),
    );
  }
}

