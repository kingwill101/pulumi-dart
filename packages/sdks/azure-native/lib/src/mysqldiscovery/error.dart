// ignore_for_file: unused_element, unnecessary_cast


/// Defines the error.
class Error {
  /// The error code.
  final String? code;
  /// The error ID.
  final String? id;
  /// The detailed error message.
  final String? message;
  /// The error possible cause.
  final String? possibleCause;
  /// Gets description of the checkpoint.
  final String? recommendedAction;
  /// The account ID used to login.
  final String? runAsAccountId;
  /// Gets description of the severity.
  final String? severity;
  /// The summarized error message.
  final String? summaryMessage;
  /// Time when this error was last updated.
  final String? updatedTimeStamp;

  /// Creates a new [Error].
  /// [code] The error code.
  /// [id] The error ID.
  /// [message] The detailed error message.
  /// [possibleCause] The error possible cause.
  /// [recommendedAction] Gets description of the checkpoint.
  /// [runAsAccountId] The account ID used to login.
  /// [severity] Gets description of the severity.
  /// [summaryMessage] The summarized error message.
  /// [updatedTimeStamp] Time when this error was last updated.
  Error({
    this.code,
    this.id,
    this.message,
    this.possibleCause,
    this.recommendedAction,
    this.runAsAccountId,
    this.severity,
    this.summaryMessage,
    this.updatedTimeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'id': ?id,
      'message': ?message,
      'possibleCause': ?possibleCause,
      'recommendedAction': ?recommendedAction,
      'runAsAccountId': ?runAsAccountId,
      'severity': ?severity,
      'summaryMessage': ?summaryMessage,
      'updatedTimeStamp': ?updatedTimeStamp,
    };
  }

  factory Error.fromMap(Map<String, dynamic> map) {
    return Error(
      code: map['code'] == null ? null : map['code'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      possibleCause: map['possibleCause'] == null ? null : map['possibleCause'] as String,
      recommendedAction: map['recommendedAction'] == null ? null : map['recommendedAction'] as String,
      runAsAccountId: map['runAsAccountId'] == null ? null : map['runAsAccountId'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
      summaryMessage: map['summaryMessage'] == null ? null : map['summaryMessage'] as String,
      updatedTimeStamp: map['updatedTimeStamp'] == null ? null : map['updatedTimeStamp'] as String,
    );
  }
}

