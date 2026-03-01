// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_security_label_security_label_args_doc}
/// The set of arguments for SecurityLabel.
/// {@endtemplate}
/// {@macro pulumi_index_security_label_security_label_args_doc}
class SecurityLabelArgs {
  /// The value of the security label.
  final pulumi.Input<String> label;
  /// The name of the provider with which this label is to be associated.
  final pulumi.Input<String> labelProvider;
  /// The name of the object to be labeled. Names of objects that reside in schemas (tables, functions, etc.) can be schema-qualified.
  final pulumi.Input<String> objectName;
  /// The PostgreSQL object type to apply this security label to.
  final pulumi.Input<String> objectType;

  /// Creates a new [SecurityLabelArgs].
  /// [label] The value of the security label.
  /// [labelProvider] The name of the provider with which this label is to be associated.
  /// [objectName] The name of the object to be labeled. Names of objects that reside in schemas (tables, functions, etc.) can be schema-qualified.
  /// [objectType] The PostgreSQL object type to apply this security label to.
  SecurityLabelArgs({
    required String label,
    required String labelProvider,
    required String objectName,
    required String objectType,
  }) :
      label = pulumi.Input.asInput<String>(label),
      labelProvider = pulumi.Input.asInput<String>(labelProvider),
      objectName = pulumi.Input.asInput<String>(objectName),
      objectType = pulumi.Input.asInput<String>(objectType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'labelProvider': labelProvider,
      'objectName': objectName,
      'objectType': objectType,
    };
  }

  factory SecurityLabelArgs.fromMap(Map<String, dynamic> map) {
    return SecurityLabelArgs(
      label: map['label'] as String,
      labelProvider: map['labelProvider'] as String,
      objectName: map['objectName'] as String,
      objectType: map['objectType'] as String,
    );
  }
}

