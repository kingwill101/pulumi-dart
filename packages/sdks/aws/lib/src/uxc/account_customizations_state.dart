// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountCustomizations resources.
class AccountCustomizationsState {
  /// Color used to identify the account in the AWS Management Console. Valid values are `none`, `red`, `darkBlue`, `lightBlue`, `green`, `yellow`, `orange`, `pink`, `purple`, and `teal`. Defaults to `none`.
  final pulumi.Input<String?>? accountColor;
  /// Set of AWS region codes to display in the console. When omitted or empty, all regions are visible.
  final pulumi.Input<List<String>?>? visibleRegions;
  /// Set of AWS service identifiers to display in the console. When omitted or empty, all services are visible.
  final pulumi.Input<List<String>?>? visibleServices;

  /// Creates a new [AccountCustomizationsState].
  /// [accountColor] Color used to identify the account in the AWS Management Console. Valid values are `none`, `red`, `darkBlue`, `lightBlue`, `green`, `yellow`, `orange`, `pink`, `purple`, and `teal`. Defaults to `none`.
  /// [visibleRegions] Set of AWS region codes to display in the console. When omitted or empty, all regions are visible.
  /// [visibleServices] Set of AWS service identifiers to display in the console. When omitted or empty, all services are visible.
  const AccountCustomizationsState({
    this.accountColor,
    this.visibleRegions,
    this.visibleServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountColor': ?accountColor,
      'visibleRegions': ?visibleRegions,
      'visibleServices': ?visibleServices,
    };
  }

  factory AccountCustomizationsState.fromMap(Map<String, dynamic> map) {
    return AccountCustomizationsState(
      accountColor: (() { final guardedValue = map['accountColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibleRegions: (() { final guardedValue = map['visibleRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      visibleServices: (() { final guardedValue = map['visibleServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
