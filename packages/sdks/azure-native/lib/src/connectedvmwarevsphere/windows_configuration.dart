// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Windows Configuration settings for the virtual machine.
class WindowsConfiguration {
  /// Sets a value indicating whether auto logon is enabled.
  final pulumi.Input<bool>? autoLogon;
  /// Sets auto logon count.
  final pulumi.Input<int>? autoLogonCount;
  /// Sets domain name that vm should join.
  final pulumi.Input<String>? domainName;
  /// Sets domain user password.
  final pulumi.Input<String>? domainUserPassword;
  /// Sets domain username.
  final pulumi.Input<String>? domainUsername;
  /// Sets first logon commands
  final pulumi.Input<List<String>>? firstLogonCommands;
  /// Sets full name of the owner of the vm.
  final pulumi.Input<String>? fullName;
  /// Sets org name to which the owner of the vm belongs.
  final pulumi.Input<String>? orgName;
  /// Sets product id of the vm.
  final pulumi.Input<String>? productId;
  /// Specifies the time zone of the virtual machine. e.g. "Pacific Standard Time". Time zone name correspond to time zones listed at Microsoft Time Zone name values(https://learn.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  final pulumi.Input<String>? timeZone;
  /// Sets work group name that vm should join.
  final pulumi.Input<String>? workGroupName;

  /// Creates a new [WindowsConfiguration].
  /// [autoLogon] Sets a value indicating whether auto logon is enabled.
  /// [autoLogonCount] Sets auto logon count.
  /// [domainName] Sets domain name that vm should join.
  /// [domainUserPassword] Sets domain user password.
  /// [domainUsername] Sets domain username.
  /// [firstLogonCommands] Sets first logon commands
  /// [fullName] Sets full name of the owner of the vm.
  /// [orgName] Sets org name to which the owner of the vm belongs.
  /// [productId] Sets product id of the vm.
  /// [timeZone] Specifies the time zone of the virtual machine. e.g. "Pacific Standard Time". Time zone name correspond to time zones listed at Microsoft Time Zone name values(https://learn.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  /// [workGroupName] Sets work group name that vm should join.
  const WindowsConfiguration({
    this.autoLogon,
    this.autoLogonCount,
    this.domainName,
    this.domainUserPassword,
    this.domainUsername,
    this.firstLogonCommands,
    this.fullName,
    this.orgName,
    this.productId,
    this.timeZone,
    this.workGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoLogon': ?autoLogon,
      'autoLogonCount': ?autoLogonCount,
      'domainName': ?domainName,
      'domainUserPassword': ?domainUserPassword,
      'domainUsername': ?domainUsername,
      'firstLogonCommands': ?firstLogonCommands,
      'fullName': ?fullName,
      'orgName': ?orgName,
      'productId': ?productId,
      'timeZone': ?timeZone,
      'workGroupName': ?workGroupName,
    };
  }

  factory WindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return WindowsConfiguration(
      autoLogon: (() { final guardedValue = map['autoLogon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoLogonCount: (() { final guardedValue = map['autoLogonCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainUserPassword: (() { final guardedValue = map['domainUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainUsername: (() { final guardedValue = map['domainUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstLogonCommands: (() { final guardedValue = map['firstLogonCommands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fullName: (() { final guardedValue = map['fullName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgName: (() { final guardedValue = map['orgName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workGroupName: (() { final guardedValue = map['workGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

