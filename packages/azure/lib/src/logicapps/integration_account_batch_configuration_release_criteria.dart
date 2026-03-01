// ignore_for_file: unused_element, unnecessary_cast

import 'integration_account_batch_configuration_release_criteria_recurrence.dart';

class IntegrationAccountBatchConfigurationReleaseCriteria {
  /// The batch size in bytes for the Logic App Integration Batch Configuration.
  final int? batchSize;
  /// The message count for the Logic App Integration Batch Configuration.
  final int? messageCount;
  /// A `recurrence` block as documented below.
  final IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence? recurrence;

  /// Creates a new [IntegrationAccountBatchConfigurationReleaseCriteria].
  /// [batchSize] The batch size in bytes for the Logic App Integration Batch Configuration.
  /// [messageCount] The message count for the Logic App Integration Batch Configuration.
  /// [recurrence] A `recurrence` block as documented below.
  IntegrationAccountBatchConfigurationReleaseCriteria({
    this.batchSize,
    this.messageCount,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'messageCount': ?messageCount,
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory IntegrationAccountBatchConfigurationReleaseCriteria.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationReleaseCriteria(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      messageCount: map['messageCount'] == null ? null : map['messageCount'] as int,
      recurrence: map['recurrence'] == null ? null : IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

