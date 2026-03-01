// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inner_health_error.dart';

/// Health Error.
class HealthError {
  /// Error creation time (UTC).
  final String? creationTimeUtc;
  /// Value indicating whether the health error is customer resolvable.
  final String? customerResolvability;
  /// ID of the entity.
  final String? entityId;
  /// Category of error.
  final String? errorCategory;
  /// Error code.
  final String? errorCode;
  /// The health error unique id.
  final String? errorId;
  /// Level of error.
  final String? errorLevel;
  /// Error message.
  final String? errorMessage;
  /// Source of error.
  final String? errorSource;
  /// Type of error.
  final String? errorType;
  /// The inner health errors. HealthError having a list of HealthError as child errors is problematic. InnerHealthError is used because this will prevent an infinite loop of structures when Hydra tries to auto-generate the contract. We are exposing the related health errors as inner health errors and all API consumers can utilize this in the same fashion as Exception -&gt; InnerException.
  final List<InnerHealthError>? innerHealthErrors;
  /// Possible causes of error.
  final String? possibleCauses;
  /// Recommended action to resolve error.
  final String? recommendedAction;
  /// DRA error message.
  final String? recoveryProviderErrorMessage;
  /// Summary message of the entity.
  final String? summaryMessage;

  /// Creates a new [HealthError].
  /// [creationTimeUtc] Error creation time (UTC).
  /// [customerResolvability] Value indicating whether the health error is customer resolvable.
  /// [entityId] ID of the entity.
  /// [errorCategory] Category of error.
  /// [errorCode] Error code.
  /// [errorId] The health error unique id.
  /// [errorLevel] Level of error.
  /// [errorMessage] Error message.
  /// [errorSource] Source of error.
  /// [errorType] Type of error.
  /// [innerHealthErrors] The inner health errors. HealthError having a list of HealthError as child errors is problematic. InnerHealthError is used because this will prevent an infinite loop of structures when Hydra tries to auto-generate the contract. We are exposing the related health errors as inner health errors and all API consumers can utilize this in the same fashion as Exception -&gt; InnerException.
  /// [possibleCauses] Possible causes of error.
  /// [recommendedAction] Recommended action to resolve error.
  /// [recoveryProviderErrorMessage] DRA error message.
  /// [summaryMessage] Summary message of the entity.
  HealthError({
    this.creationTimeUtc,
    this.customerResolvability,
    this.entityId,
    this.errorCategory,
    this.errorCode,
    this.errorId,
    this.errorLevel,
    this.errorMessage,
    this.errorSource,
    this.errorType,
    this.innerHealthErrors,
    this.possibleCauses,
    this.recommendedAction,
    this.recoveryProviderErrorMessage,
    this.summaryMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimeUtc': ?creationTimeUtc,
      'customerResolvability': ?customerResolvability,
      'entityId': ?entityId,
      'errorCategory': ?errorCategory,
      'errorCode': ?errorCode,
      'errorId': ?errorId,
      'errorLevel': ?errorLevel,
      'errorMessage': ?errorMessage,
      'errorSource': ?errorSource,
      'errorType': ?errorType,
      'innerHealthErrors': ?innerHealthErrors == null ? null : pulumi.Input.encodeList<InnerHealthError, Map<String, dynamic>>(innerHealthErrors!, (value) => value.toMap()),
      'possibleCauses': ?possibleCauses,
      'recommendedAction': ?recommendedAction,
      'recoveryProviderErrorMessage': ?recoveryProviderErrorMessage,
      'summaryMessage': ?summaryMessage,
    };
  }

  factory HealthError.fromMap(Map<String, dynamic> map) {
    return HealthError(
      creationTimeUtc: map['creationTimeUtc'] == null ? null : map['creationTimeUtc'] as String,
      customerResolvability: map['customerResolvability'] == null ? null : map['customerResolvability'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
      errorCategory: map['errorCategory'] == null ? null : map['errorCategory'] as String,
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorId: map['errorId'] == null ? null : map['errorId'] as String,
      errorLevel: map['errorLevel'] == null ? null : map['errorLevel'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      errorSource: map['errorSource'] == null ? null : map['errorSource'] as String,
      errorType: map['errorType'] == null ? null : map['errorType'] as String,
      innerHealthErrors: map['innerHealthErrors'] == null ? null : pulumi.Input.decodeList<InnerHealthError>(map['innerHealthErrors'], (value) => InnerHealthError.fromMap((value as Map).cast<String, dynamic>())),
      possibleCauses: map['possibleCauses'] == null ? null : map['possibleCauses'] as String,
      recommendedAction: map['recommendedAction'] == null ? null : map['recommendedAction'] as String,
      recoveryProviderErrorMessage: map['recoveryProviderErrorMessage'] == null ? null : map['recoveryProviderErrorMessage'] as String,
      summaryMessage: map['summaryMessage'] == null ? null : map['summaryMessage'] as String,
    );
  }
}

