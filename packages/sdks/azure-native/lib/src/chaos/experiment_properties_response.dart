// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_data_storage_properties_response.dart';
import 'list_selector_response.dart';
import 'step_response.dart';

/// Model that represents the Experiment properties model.
class ExperimentPropertiesResponse {
  /// Optional customer-managed Storage account where Experiment schema will be stored.
  final pulumi.Input<CustomerDataStoragePropertiesResponse>? customerDataStorage;
  /// Most recent provisioning state for the given experiment resource.
  final pulumi.Input<String> provisioningState;
  /// List of selectors.
  final pulumi.Input<List<ListSelectorResponse>> selectors;
  /// List of steps.
  final pulumi.Input<List<StepResponse>> steps;

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
      'customerDataStorage': ?pulumi.Input.mapOptionalInputValue<CustomerDataStoragePropertiesResponse, Map<String, dynamic>>(customerDataStorage, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'selectors': pulumi.Input.mapInputValue<List<ListSelectorResponse>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<ListSelectorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'steps': pulumi.Input.mapInputValue<List<StepResponse>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<StepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExperimentPropertiesResponse(
      customerDataStorage: map['customerDataStorage'] == null ? null : (CustomerDataStoragePropertiesResponse.fromMap((map['customerDataStorage']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      selectors: (pulumi.Input.decodeList<ListSelectorResponse>(map['selectors'], (value) => ListSelectorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      steps: (pulumi.Input.decodeList<StepResponse>(map['steps'], (value) => StepResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

