// ignore_for_file: unused_element, unnecessary_cast

import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_bool/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_bool.dart';
import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_double/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_double.dart';
import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_enum/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_enum.dart';
import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_enum_list/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_enum_list.dart';
import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_int/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_int.dart';
import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_int_list/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_int_list.dart';
import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_string/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_string.dart';
import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_string_list/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter_string_list.dart';

class ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter {
  /// The bool <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> for a Boolean-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool?
      bool;

  /// The float <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> for a Double-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble?
      double;

  /// The string <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> for a Enum-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum?
      enum_;

  /// The string list <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> for a EnumList-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList?
      enumList;

  /// The int <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> for a Int-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt?
      int;

  /// The int list <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> for a IntList-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList?
      intList;

  /// The name of the control parameter. For more information see the [Security Hub controls reference] documentation.
  final String name;

  /// The string <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> for a String-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString?
      string;

  /// The string list <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> for a StringList-typed Security Hub Control Parameter.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList?
      stringList;

  /// Identifies whether a control parameter uses a custom user-defined value or subscribes to the default Security Hub behavior. Valid values: `DEFAULT`, `CUSTOM`.
  final String valueType;

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
    final map = <String, dynamic>{};
    final boolValue = bool;
    if (boolValue != null) {
      map['bool'] = boolValue.toMap();
    }
    final doubleValue = double;
    if (doubleValue != null) {
      map['double'] = doubleValue.toMap();
    }
    final enum_Value = enum_;
    if (enum_Value != null) {
      map['enum'] = enum_Value.toMap();
    }
    final enumListValue = enumList;
    if (enumListValue != null) {
      map['enumList'] = enumListValue.toMap();
    }
    final intValue = int;
    if (intValue != null) {
      map['int'] = intValue.toMap();
    }
    final intListValue = intList;
    if (intListValue != null) {
      map['intList'] = intListValue.toMap();
    }
    map['name'] = name;
    final stringValue = string;
    if (stringValue != null) {
      map['string'] = stringValue.toMap();
    }
    final stringListValue = stringList;
    if (stringListValue != null) {
      map['stringList'] = stringListValue.toMap();
    }
    map['valueType'] = valueType;
    return map;
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter(
      bool: map['bool'] == null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool
              .fromMap((map['bool'] as Map).cast<String, dynamic>()),
      double: map['double'] == null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble
              .fromMap((map['double'] as Map).cast<String, dynamic>()),
      enum_: map['enum'] == null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum
              .fromMap((map['enum'] as Map).cast<String, dynamic>()),
      enumList: map['enumList'] == null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList
              .fromMap((map['enumList'] as Map).cast<String, dynamic>()),
      int: map['int'] == null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt
              .fromMap((map['int'] as Map).cast<String, dynamic>()),
      intList: map['intList'] == null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList
              .fromMap((map['intList'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      string: map['string'] == null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString
              .fromMap((map['string'] as Map).cast<String, dynamic>()),
      stringList: map['stringList'] == null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList
              .fromMap((map['stringList'] as Map).cast<String, dynamic>()),
      valueType: map['valueType'] as String,
    );
  }
}
