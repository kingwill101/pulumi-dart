// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_container_environment_var_field_ref.dart';

class ContainerGroupContainerEnvironmentVar {
  final pulumi.Input<List<ContainerGroupContainerEnvironmentVarFieldRef>>? fieldReves;
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

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
      'fieldReves': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupContainerEnvironmentVarFieldRef>, List<Map<String, dynamic>>>(fieldReves, (value) => pulumi.Input.encodeList<ContainerGroupContainerEnvironmentVarFieldRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': ?key,
      'value': ?value,
    };
  }

  factory ContainerGroupContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerEnvironmentVar(
      fieldReves: (() { final guardedValue = map['fieldReves']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupContainerEnvironmentVarFieldRef>(guardedValue, (value) => ContainerGroupContainerEnvironmentVarFieldRef.fromMap((value as Map).cast<String, dynamic>()))); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

