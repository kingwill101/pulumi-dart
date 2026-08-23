// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amw_account.dart';
import 'baseline_properties.dart';
import 'sli_properties.dart';

/// Defines the root level properties of an SLI resource.
class SliResource {
  /// Defines the SLO baseline associated with the SLI.
  final pulumi.Input<BaselineProperties> baselineProperties;
  /// Specifies the category of the SLI, used to classify signals such as Availability and Latency.
  final pulumi.Input<String> category;
  /// A user-provided description of the SLI, with a maximum length of 1000 characters.
  final pulumi.Input<String> description;
  /// Destination AMW accounts.
  final pulumi.Input<List<AmwAccount>> destinationAmwAccounts;
  /// A flag to determine whether alert is enabled.
  final pulumi.Input<bool> enableAlert;
  /// Determines how the SLI is evaluated—either based on request counts or time windows.
  final pulumi.Input<String> evaluationType;
  /// Defines the SLI properties associated with the SLI.
  final pulumi.Input<SliProperties> sliProperties;

  /// Creates a new [SliResource].
  /// [baselineProperties] Defines the SLO baseline associated with the SLI.
  /// [category] Specifies the category of the SLI, used to classify signals such as Availability and Latency.
  /// [description] A user-provided description of the SLI, with a maximum length of 1000 characters.
  /// [destinationAmwAccounts] Destination AMW accounts.
  /// [enableAlert] A flag to determine whether alert is enabled.
  /// [evaluationType] Determines how the SLI is evaluated—either based on request counts or time windows.
  /// [sliProperties] Defines the SLI properties associated with the SLI.
  const SliResource({
    required this.baselineProperties,
    required this.category,
    required this.description,
    required this.destinationAmwAccounts,
    required this.enableAlert,
    required this.evaluationType,
    required this.sliProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineProperties': pulumi.Input.mapInputValue<BaselineProperties, Map<String, dynamic>>(baselineProperties, (value) => value.toMap()),
      'category': category,
      'description': description,
      'destinationAmwAccounts': pulumi.Input.mapInputValue<List<AmwAccount>, List<Map<String, dynamic>>>(destinationAmwAccounts, (value) => pulumi.Input.encodeList<AmwAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableAlert': enableAlert,
      'evaluationType': evaluationType,
      'sliProperties': pulumi.Input.mapInputValue<SliProperties, Map<String, dynamic>>(sliProperties, (value) => value.toMap()),
    };
  }

  factory SliResource.fromMap(Map<String, dynamic> map) {
    return SliResource(
      baselineProperties: pulumi.Input.fromValue(BaselineProperties.fromMap((map['baselineProperties']! as Map).cast<String, dynamic>())),
      category: pulumi.Input.fromValue(map['category'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      destinationAmwAccounts: pulumi.Input.fromValue(pulumi.Input.decodeList<AmwAccount>(map['destinationAmwAccounts']!, (value) => AmwAccount.fromMap((value as Map).cast<String, dynamic>()))),
      enableAlert: pulumi.Input.fromValue(map['enableAlert'] as bool),
      evaluationType: pulumi.Input.fromValue(map['evaluationType'] as String),
      sliProperties: pulumi.Input.fromValue(SliProperties.fromMap((map['sliProperties']! as Map).cast<String, dynamic>())),
    );
  }
}
