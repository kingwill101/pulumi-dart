// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_container_environment_var_field_ref.dart';

class ContainerGroupContainerEnvironmentVar {
  final List<ContainerGroupContainerEnvironmentVarFieldRef>? fieldReves;
  final String? key;
  final String? value;

  /// Creates a new [ContainerGroupContainerEnvironmentVar].
  /// [fieldReves] Optional.
  /// [key] Optional.
  /// [value] Optional.
  ContainerGroupContainerEnvironmentVar({
    this.fieldReves,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldReves': ?fieldReves == null ? null : pulumi.Input.encodeList<ContainerGroupContainerEnvironmentVarFieldRef, Map<String, dynamic>>(fieldReves!, (value) => value.toMap()),
      'key': ?key,
      'value': ?value,
    };
  }

  factory ContainerGroupContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerEnvironmentVar(
      fieldReves: map['fieldReves'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerEnvironmentVarFieldRef>(map['fieldReves'], (value) => ContainerGroupContainerEnvironmentVarFieldRef.fromMap((value as Map).cast<String, dynamic>())),
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

