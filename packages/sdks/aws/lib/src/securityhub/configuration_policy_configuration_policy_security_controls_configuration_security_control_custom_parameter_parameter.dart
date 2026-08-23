// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_bool.dart';
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_double.dart';
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_enum.dart';
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_enum_list.dart';
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_int.dart';
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_int_list.dart';
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_string.dart';
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_string_list.dart';

class ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter {
  /// The bool `value` for a Boolean-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool>? bool_;
  /// The float `value` for a Double-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble>? double_;
  /// The string `value` for a Enum-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum>? enum_;
  /// The string list `value` for a EnumList-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList>? enumList;
  /// The int `value` for a Int-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt>? int_;
  /// The int list `value` for a IntList-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList>? intList;
  /// The name of the control parameter. For more information see the [Security Hub controls reference] documentation.
  final pulumi.Input<String> name;
  /// The string `value` for a String-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString>? string_;
  /// The string list `value` for a StringList-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList>? stringList;
  /// Identifies whether a control parameter uses a custom user-defined value or subscribes to the default Security Hub behavior. Valid values: `DEFAULT`, `CUSTOM`.
  final pulumi.Input<String> valueType;

  /// Creates a new [ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter].
  /// [bool_] The bool `value` for a Boolean-typed Security Hub Control Parameter.
  /// [double_] The float `value` for a Double-typed Security Hub Control Parameter.
  /// [enum_] The string `value` for a Enum-typed Security Hub Control Parameter.
  /// [enumList] The string list `value` for a EnumList-typed Security Hub Control Parameter.
  /// [int_] The int `value` for a Int-typed Security Hub Control Parameter.
  /// [intList] The int list `value` for a IntList-typed Security Hub Control Parameter.
  /// [name] The name of the control parameter. For more information see the [Security Hub controls reference] documentation.
  /// [string_] The string `value` for a String-typed Security Hub Control Parameter.
  /// [stringList] The string list `value` for a StringList-typed Security Hub Control Parameter.
  /// [valueType] Identifies whether a control parameter uses a custom user-defined value or subscribes to the default Security Hub behavior. Valid values: `DEFAULT`, `CUSTOM`.
  const ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter({
    this.bool_,
    this.double_,
    this.enum_,
    this.enumList,
    this.int_,
    this.intList,
    required this.name,
    this.string_,
    this.stringList,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool, Map<String, dynamic>>(bool_, (value) => value.toMap()),
      'double': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble, Map<String, dynamic>>(double_, (value) => value.toMap()),
      'enum': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum, Map<String, dynamic>>(enum_, (value) => value.toMap()),
      'enumList': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList, Map<String, dynamic>>(enumList, (value) => value.toMap()),
      'int': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt, Map<String, dynamic>>(int_, (value) => value.toMap()),
      'intList': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList, Map<String, dynamic>>(intList, (value) => value.toMap()),
      'name': name,
      'string': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString, Map<String, dynamic>>(string_, (value) => value.toMap()),
      'stringList': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList, Map<String, dynamic>>(stringList, (value) => value.toMap()),
      'valueType': valueType,
    };
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter(
      bool_: (() { final guardedValue = map['bool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      double_: (() { final guardedValue = map['double']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enum_: (() { final guardedValue = map['enum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enumList: (() { final guardedValue = map['enumList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      int_: (() { final guardedValue = map['int']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intList: (() { final guardedValue = map['intList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      string_: (() { final guardedValue = map['string']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringList: (() { final guardedValue = map['stringList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      valueType: pulumi.Input.fromValue(map['valueType'] as String),
    );
  }
}
