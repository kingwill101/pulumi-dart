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
      offerID: (() {
        final guardedValue = map['offerID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planID: (() {
        final guardedValue = map['planID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planName: (() {
        final guardedValue = map['planName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisherID: (() {
        final guardedValue = map['publisherID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      termID: (() {
        final guardedValue = map['termID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
