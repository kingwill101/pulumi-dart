// ignore_for_file: unused_element, unnecessary_cast

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
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool? bool;
  /// The float `value` for a Double-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble? double;
  /// The string `value` for a Enum-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum? enum_;
  /// The string list `value` for a EnumList-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList? enumList;
  /// The int `value` for a Int-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt? int;
  /// The int list `value` for a IntList-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList? intList;
  /// The name of the control parameter. For more information see the [Security Hub controls reference] documentation.
  final String name;
  /// The string `value` for a String-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString? string;
  /// The string list `value` for a StringList-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList? stringList;
  /// Identifies whether a control parameter uses a custom user-defined value or subscribes to the default Security Hub behavior. Valid values: `DEFAULT`, `CUSTOM`.
  final String valueType;

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
      'bool': ?bool == null ? null : bool!.toMap(),
      'double': ?double == null ? null : double!.toMap(),
      'enum': ?enum_ == null ? null : enum_!.toMap(),
      'enumList': ?enumList == null ? null : enumList!.toMap(),
      'int': ?int == null ? null : int!.toMap(),
      'intList': ?intList == null ? null : intList!.toMap(),
      'name': name,
      'string': ?string == null ? null : string!.toMap(),
      'stringList': ?stringList == null ? null : stringList!.toMap(),
      'valueType': valueType,
    };
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter(
      bool: map['bool'] == null ? null : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool.fromMap((map['bool'] as Map).cast<String, dynamic>()),
      double: map['double'] == null ? null : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble.fromMap((map['double'] as Map).cast<String, dynamic>()),
      enum_: map['enum'] == null ? null : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum.fromMap((map['enum'] as Map).cast<String, dynamic>()),
      enumList: map['enumList'] == null ? null : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList.fromMap((map['enumList'] as Map).cast<String, dynamic>()),
      int: map['int'] == null ? null : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt.fromMap((map['int'] as Map).cast<String, dynamic>()),
      intList: map['intList'] == null ? null : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList.fromMap((map['intList'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      string: map['string'] == null ? null : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString.fromMap((map['string'] as Map).cast<String, dynamic>()),
      stringList: map['stringList'] == null ? null : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList.fromMap((map['stringList'] as Map).cast<String, dynamic>()),
      valueType: map['valueType'] as String,
    );
  }
}

