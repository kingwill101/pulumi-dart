// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_data_storage_properties_response.dart';
import 'list_selector_response.dart';
import 'step_response.dart';

/// Model that represents the Experiment properties model.
class ExperimentPropertiesResponse {
  /// Optional customer-managed Storage account where Experiment schema will be stored.
  final CustomerDataStoragePropertiesResponse? customerDataStorage;
  /// Most recent provisioning state for the given experiment resource.
  final String provisioningState;
  /// List of selectors.
  final List<ListSelectorResponse> selectors;
  /// List of steps.
  final List<StepResponse> steps;

  /// Creates a new [ExperimentPropertiesResponse].
  /// [customerDataStorage] Optional customer-managed Storage account where Experiment schema will be stored.
  /// [provisioningState] Most recent provisioning state for the given experiment resource.
  /// [selectors] List of selectors.
  /// [steps] List of steps.
  ExperimentPropertiesResponse({
    this.customerDataStorage,
    required this.provisioningState,
    required this.selectors,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerDataStorage': ?customerDataStorage == null ? null : customerDataStorage!.toMap(),
      'provisioningState': provisioningState,
      'selectors': pulumi.Input.encodeList<ListSelectorResponse, Map<String, dynamic>>(selectors, (value) => value.toMap()),
      'steps': pulumi.Input.encodeList<StepResponse, Map<String, dynamic>>(steps, (value) => value.toMap()),
    };
  }

  factory ExperimentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExperimentPropertiesResponse(
      customerDataStorage: map['customerDataStorage'] == null ? null : CustomerDataStoragePropertiesResponse.fromMap((map['customerDataStorage'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      selectors: pulumi.Input.decodeList<ListSelectorResponse>(map['selectors'], (value) => ListSelectorResponse.fromMap((value as Map).cast<String, dynamic>())),
      steps: pulumi.Input.decodeList<StepResponse>(map['steps'], (value) => StepResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

