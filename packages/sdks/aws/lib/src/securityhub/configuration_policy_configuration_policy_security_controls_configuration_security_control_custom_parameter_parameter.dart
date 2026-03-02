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
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool>? bool;
  /// The float `value` for a Double-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble>? double;
  /// The string `value` for a Enum-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum>? enum_;
  /// The string list `value` for a EnumList-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList>? enumList;
  /// The int `value` for a Int-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt>? int;
  /// The int list `value` for a IntList-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList>? intList;
  /// The name of the control parameter. For more information see the [Security Hub controls reference] documentation.
  final pulumi.Input<String> name;
  /// The string `value` for a String-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString>? string;
  /// The string list `value` for a StringList-typed Security Hub Control Parameter.
  final pulumi.Input<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList>? stringList;
  /// Identifies whether a control parameter uses a custom user-defined value or subscribes to the default Security Hub behavior. Valid values: `DEFAULT`, `CUSTOM`.
  final pulumi.Input<String> valueType;

  /// Creates a new [ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter].
  /// [bool] The bool `value` for a Boolean-typed Security Hub Control Parameter.
  /// [double] The float `value` for a Double-typed Security Hub Control Parameter.
  /// [enum_] The string `value` for a Enum-typed Security Hub Control Parameter.
  /// [enumList] The string list `value` for a EnumList-typed Security Hub Control Parameter.
  /// [int] The int `value` for a Int-typed Security Hub Control Parameter.
  /// [intList] The int list `value` for a IntList-typed Security Hub Control Parameter.
  /// [name] The name of the control parameter. For more information see the [Security Hub controls reference] documentation.
  /// [string] The string `value` for a String-typed Security Hub Control Parameter.
  /// [stringList] The string list `value` for a StringList-typed Security Hub Control Parameter.
  /// [valueType] Identifies whether a control parameter uses a custom user-defined value or subscribes to the default Security Hub behavior. Valid values: `DEFAULT`, `CUSTOM`.
  ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter({
    this.bool,
    this.double,
    this.enum_,
    this.enumList,
    this.int,
    this.intList,
    required this.name,
    this.string,
    this.stringList,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool, Map<String, dynamic>>(bool, (value) => value.toMap()),
      'double': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble, Map<String, dynamic>>(double, (value) => value.toMap()),
      'enum': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum, Map<String, dynamic>>(enum_, (value) => value.toMap()),
      'enumList': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList, Map<String, dynamic>>(enumList, (value) => value.toMap()),
      'int': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt, Map<String, dynamic>>(int, (value) => value.toMap()),
      'intList': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList, Map<String, dynamic>>(intList, (value) => value.toMap()),
      'name': name,
      'string': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString, Map<String, dynamic>>(string, (value) => value.toMap()),
      'stringList': ?pulumi.Input.mapOptionalInputValue<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList, Map<String, dynamic>>(stringList, (value) => value.toMap()),
      'valueType': valueType,
    };
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter(
      bool: map['bool'] == null ? null : (ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool.fromMap((map['bool'] as Map).cast<String, dynamic>())).input(),
      double: map['double'] == null ? null : (ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble.fromMap((map['double'] as Map).cast<String, dynamic>())).input(),
      enum_: map['enum'] == null ? null : (ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum.fromMap((map['enum'] as Map).cast<String, dynamic>())).input(),
      enumList: map['enumList'] == null ? null : (ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList.fromMap((map['enumList'] as Map).cast<String, dynamic>())).input(),
      int: map['int'] == null ? null : (ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt.fromMap((map['int'] as Map).cast<String, dynamic>())).input(),
      intList: map['intList'] == null ? null : (ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList.fromMap((map['intList'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      string: map['string'] == null ? null : (ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString.fromMap((map['string'] as Map).cast<String, dynamic>())).input(),
      stringList: map['stringList'] == null ? null : (ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList.fromMap((map['stringList'] as Map).cast<String, dynamic>())).input(),
      valueType: (map['valueType'] as String).input(),
    );
  }
}

