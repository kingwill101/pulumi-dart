// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Windows Configuration settings for the virtual machine.
class WindowsConfigurationResponse {
  /// Sets a value indicating whether auto logon is enabled.
  final pulumi.Input<bool>? autoLogon;
  /// Sets auto logon count.
  final pulumi.Input<int>? autoLogonCount;
  /// Sets domain name that vm should join.
  final pulumi.Input<String>? domainName;
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

  /// Creates a new [WindowsConfigurationResponse].
  /// [autoLogon] Sets a value indicating whether auto logon is enabled.
  /// [autoLogonCount] Sets auto logon count.
  /// [domainName] Sets domain name that vm should join.
  /// [domainUsername] Sets domain username.
  /// [firstLogonCommands] Sets first logon commands
  /// [fullName] Sets full name of the owner of the vm.
  /// [orgName] Sets org name to which the owner of the vm belongs.
  /// [productId] Sets product id of the vm.
  /// [timeZone] Specifies the time zone of the virtual machine. e.g. "Pacific Standard Time". Time zone name correspond to time zones listed at Microsoft Time Zone name values(https://learn.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  /// [workGroupName] Sets work group name that vm should join.
  WindowsConfigurationResponse({
    this.autoLogon,
    this.autoLogonCount,
    this.domainName,
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
      'domainUsername': ?domainUsername,
      'firstLogonCommands': ?firstLogonCommands,
      'fullName': ?fullName,
      'orgName': ?orgName,
      'productId': ?productId,
      'timeZone': ?timeZone,
      'workGroupName': ?workGroupName,
    };
  }

  factory WindowsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WindowsConfigurationResponse(
      autoLogon: map['autoLogon'] == null ? null : (map['autoLogon'] as bool).input(),
      autoLogonCount: map['autoLogonCount'] == null ? null : (map['autoLogonCount'] as int).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      domainUsername: map['domainUsername'] == null ? null : (map['domainUsername'] as String).input(),
      firstLogonCommands: map['firstLogonCommands'] == null ? null : ((map['firstLogonCommands'] as List).cast<String>()).input(),
      fullName: map['fullName'] == null ? null : (map['fullName'] as String).input(),
      orgName: map['orgName'] == null ? null : (map['orgName'] as String).input(),
      productId: map['productId'] == null ? null : (map['productId'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      workGroupName: map['workGroupName'] == null ? null : (map['workGroupName'] as String).input(),
    );
  }
}

