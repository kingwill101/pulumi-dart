// ignore_for_file: unused_element, unnecessary_cast

class IntentFollowupIntentInfo {
  /// The unique identifier of the followup intent.
  /// Format: projects/<Project ID>/agent/intents/<Intent ID>.
  final String? followupIntentName;

  /// The unique identifier of the parent intent in the chain of followup intents.
  /// Format: projects/<Project ID>/agent/intents/<Intent ID>.
  final String? parentFollowupIntentName;

  /// Creates a new [IntentFollowupIntentInfo].
  /// [followupIntentName] The unique identifier of the followup intent.
  /// [parentFollowupIntentName] The unique identifier of the parent intent in the chain of followup intents.
  IntentFollowupIntentInfo({
    this.followupIntentName,
    this.parentFollowupIntentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followupIntentName': ?followupIntentName,
      'parentFollowupIntentName': ?parentFollowupIntentName,
    };
  }

  factory IntentFollowupIntentInfo.fromMap(Map<String, dynamic> map) {
    return IntentFollowupIntentInfo(
      followupIntentName: map['followupIntentName'] == null
          ? null
          : map['followupIntentName'] as String,
      parentFollowupIntentName: map['parentFollowupIntentName'] == null
          ? null
          : map['parentFollowupIntentName'] as String,
    );
  }
}
