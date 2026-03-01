// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the Windows Configuration settings for the virtual machine.
class WindowsConfiguration {
  /// Sets a value indicating whether auto logon is enabled.
  final bool? autoLogon;
  /// Sets auto logon count.
  final int? autoLogonCount;
  /// Sets domain name that vm should join.
  final String? domainName;
  /// Sets domain user password.
  final String? domainUserPassword;
  /// Sets domain username.
  final String? domainUsername;
  /// Sets first logon commands
  final List<String>? firstLogonCommands;
  /// Sets full name of the owner of the vm.
  final String? fullName;
  /// Sets org name to which the owner of the vm belongs.
  final String? orgName;
  /// Sets product id of the vm.
  final String? productId;
  /// Specifies the time zone of the virtual machine. e.g. "Pacific Standard Time". Time zone name correspond to time zones listed at Microsoft Time Zone name values(https://learn.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  final String? timeZone;
  /// Sets work group name that vm should join.
  final String? workGroupName;

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
  WindowsConfiguration({
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
      autoLogon: map['autoLogon'] == null ? null : map['autoLogon'] as bool,
      autoLogonCount: map['autoLogonCount'] == null ? null : map['autoLogonCount'] as int,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      domainUserPassword: map['domainUserPassword'] == null ? null : map['domainUserPassword'] as String,
      domainUsername: map['domainUsername'] == null ? null : map['domainUsername'] as String,
      firstLogonCommands: map['firstLogonCommands'] == null ? null : (map['firstLogonCommands'] as List).cast<String>(),
      fullName: map['fullName'] == null ? null : map['fullName'] as String,
      orgName: map['orgName'] == null ? null : map['orgName'] as String,
      productId: map['productId'] == null ? null : map['productId'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      workGroupName: map['workGroupName'] == null ? null : map['workGroupName'] as String,
    );
  }
}

