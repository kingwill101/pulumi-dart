// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_init_container_environment_var_field_ref.dart';

class ContainerGroupInitContainerEnvironmentVar {
  final pulumi.Input<List<ContainerGroupInitContainerEnvironmentVarFieldRef>>? fieldReves;
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [ContainerGroupInitContainerEnvironmentVar].
  /// [fieldReves] Optional.
  /// [key] Optional.
  /// [value] Optional.
  ContainerGroupInitContainerEnvironmentVar({
    this.fieldReves,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldReves': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupInitContainerEnvironmentVarFieldRef>, List<Map<String, dynamic>>>(fieldReves, (value) => pulumi.Input.encodeList<ContainerGroupInitContainerEnvironmentVarFieldRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': ?key,
      'value': ?value,
    };
  }

  factory ContainerGroupInitContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainerEnvironmentVar(
      fieldReves: map['fieldReves'] == null ? null : (pulumi.Input.decodeList<ContainerGroupInitContainerEnvironmentVarFieldRef>(map['fieldReves'], (value) => ContainerGroupInitContainerEnvironmentVarFieldRef.fromMap((value as Map).cast<String, dynamic>()))).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

