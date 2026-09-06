// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_data_storage_properties.dart';
import 'step.dart';

/// Model that represents the Experiment properties model.
class ExperimentProperties {
  /// Optional customer-managed Storage account where Experiment schema will be stored.
  final pulumi.Input<CustomerDataStorageProperties?>? customerDataStorage;
  /// List of selectors.
  final pulumi.Input<List<dynamic>> selectors;
  /// List of steps.
  final pulumi.Input<List<Step>> steps;

  /// Creates a new [ExperimentProperties].
  /// [customerDataStorage] Optional customer-managed Storage account where Experiment schema will be stored.
  /// [selectors] List of selectors.
  /// [steps] List of steps.
  const ExperimentProperties({
    this.customerDataStorage,
    required this.selectors,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerDataStorage': ?pulumi.Input.mapOptionalInputValue<CustomerDataStorageProperties, Map<String, dynamic>>(customerDataStorage, (value) => value.toMap()),
      'selectors': selectors,
      'steps': pulumi.Input.mapInputValue<List<Step>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<Step, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentProperties.fromMap(Map<String, dynamic> map) {
    return ExperimentProperties(
      customerDataStorage: (() { final guardedValue = map['customerDataStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerDataStorageProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selectors: pulumi.Input.fromValue((map['selectors'] as List).cast<dynamic>()),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<Step>(map['steps']!, (value) => Step.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
