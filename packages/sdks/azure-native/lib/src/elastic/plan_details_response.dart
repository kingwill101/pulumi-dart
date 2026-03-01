// ignore_for_file: unused_element, unnecessary_cast


/// Plan details of the monitor resource.
class PlanDetailsResponse {
  /// Offer ID of the plan
  final String? offerID;
  /// Plan ID
  final String? planID;
  /// Plan Name
  final String? planName;
  /// Publisher ID of the plan
  final String? publisherID;
  /// Term ID of the plan
  final String? termID;

  /// Creates a new [PlanDetailsResponse].
  /// [offerID] Offer ID of the plan
  /// [planID] Plan ID
  /// [planName] Plan Name
  /// [publisherID] Publisher ID of the plan
  /// [termID] Term ID of the plan
  PlanDetailsResponse({
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

  factory PlanDetailsResponse.fromMap(Map<String, dynamic> map) {
    return PlanDetailsResponse(
      offerID: map['offerID'] == null ? null : map['offerID'] as String,
      planID: map['planID'] == null ? null : map['planID'] as String,
      planName: map['planName'] == null ? null : map['planName'] as String,
      publisherID: map['publisherID'] == null ? null : map['publisherID'] as String,
      termID: map['termID'] == null ? null : map['termID'] as String,
    );
  }
}

