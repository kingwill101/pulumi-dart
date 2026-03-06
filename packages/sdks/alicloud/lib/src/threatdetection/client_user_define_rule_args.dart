// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_client_user_define_rule_client_user_define_rule_args_doc}
/// The set of arguments for ClientUserDefineRule.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_client_user_define_rule_client_user_define_rule_args_doc}
class ClientUserDefineRuleArgs {
  /// The operation type. Value:
  /// - **0**: plus White
  /// - **1**: Plus Black.
  final pulumi.Input<int> actionType;
  /// The custom rule name.
  final pulumi.Input<String> clientUserDefineRuleName;
  /// Command line. When the value of the Type attribute is 2, 3, 4, 5, 6, or 7, the command line field is required.
  final pulumi.Input<String>? cmdline;
  /// The file path. When the value of the Type attribute is 4 or 6, 7, the FilePath field is required.
  final pulumi.Input<String>? filePath;
  /// Process hash list. When the value of the Type attribute is 1, the Hash attribute is required.
  final pulumi.Input<String>? hash;
  /// IP address. When the value of the Type attribute is 3, the Ip attribute is required.
  final pulumi.Input<String>? ip;
  /// The new file path to rename the file. When the value of the Type attribute is 7, the NewFilePath attribute is required.
  final pulumi.Input<String>? newFilePath;
  /// The parent command line.
  final pulumi.Input<String>? parentCmdline;
  /// Parent process path.
  final pulumi.Input<String>? parentProcPath;
  /// The operating system type. Value:
  /// - **windows**:widows
  /// - **linux**:linux
  /// - **all**: all.
  final pulumi.Input<String> platform;
  /// The port number. When the value of the Type attribute is 3, the PortStr attribute is required. Value range: **1-65535**.
  final pulumi.Input<String>? portStr;
  /// The process path. When the Type attribute is set to 2, 3, 4, 5, 6, or 7, the ProcPath attribute is required.
  final pulumi.Input<String>? procPath;
  /// The registry value. When the value of the Type attribute is 5, the RegistryKey attribute is required.
  final pulumi.Input<String>? registryContent;
  /// The registry key. When the value of the Type attribute is 5, the RegistryKey attribute is required.
  final pulumi.Input<String>? registryKey;
  /// The rule type. Value:
  /// - **1**: Process hash
  /// - **2**: command line
  /// - **3**: Process network
  /// - **4**: File reading and writing
  /// - **5**: Operate the registry
  /// - **6**: Load Dynamic Link Library
  /// - **7**: File Rename.
  final pulumi.Input<int> type;

  /// Creates a new [ClientUserDefineRuleArgs].
  /// [actionType] The operation type. Value:
  /// [clientUserDefineRuleName] The custom rule name.
  /// [cmdline] Command line. When the value of the Type attribute is 2, 3, 4, 5, 6, or 7, the command line field is required.
  /// [filePath] The file path. When the value of the Type attribute is 4 or 6, 7, the FilePath field is required.
  /// [hash] Process hash list. When the value of the Type attribute is 1, the Hash attribute is required.
  /// [ip] IP address. When the value of the Type attribute is 3, the Ip attribute is required.
  /// [newFilePath] The new file path to rename the file. When the value of the Type attribute is 7, the NewFilePath attribute is required.
  /// [parentCmdline] The parent command line.
  /// [parentProcPath] Parent process path.
  /// [platform] The operating system type. Value:
  /// [portStr] The port number. When the value of the Type attribute is 3, the PortStr attribute is required. Value range: **1-65535**.
  /// [procPath] The process path. When the Type attribute is set to 2, 3, 4, 5, 6, or 7, the ProcPath attribute is required.
  /// [registryContent] The registry value. When the value of the Type attribute is 5, the RegistryKey attribute is required.
  /// [registryKey] The registry key. When the value of the Type attribute is 5, the RegistryKey attribute is required.
  /// [type] The rule type. Value:
  const ClientUserDefineRuleArgs({
    required this.actionType,
    required this.clientUserDefineRuleName,
    this.cmdline,
    this.filePath,
    this.hash,
    this.ip,
    this.newFilePath,
    this.parentCmdline,
    this.parentProcPath,
    required this.platform,
    this.portStr,
    this.procPath,
    this.registryContent,
    this.registryKey,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'clientUserDefineRuleName': clientUserDefineRuleName,
      'cmdline': ?cmdline,
      'filePath': ?filePath,
      'hash': ?hash,
      'ip': ?ip,
      'newFilePath': ?newFilePath,
      'parentCmdline': ?parentCmdline,
      'parentProcPath': ?parentProcPath,
      'platform': platform,
      'portStr': ?portStr,
      'procPath': ?procPath,
      'registryContent': ?registryContent,
      'registryKey': ?registryKey,
      'type': type,
    };
  }

  factory ClientUserDefineRuleArgs.fromMap(Map<String, dynamic> map) {
    return ClientUserDefineRuleArgs(
      actionType: pulumi.Input.fromValue(map['actionType'] as int),
      clientUserDefineRuleName: pulumi.Input.fromValue(map['clientUserDefineRuleName'] as String),
      cmdline: (() { final guardedValue = map['cmdline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hash: (() { final guardedValue = map['hash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      newFilePath: (() { final guardedValue = map['newFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentCmdline: (() { final guardedValue = map['parentCmdline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentProcPath: (() { final guardedValue = map['parentProcPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: pulumi.Input.fromValue(map['platform'] as String),
      portStr: (() { final guardedValue = map['portStr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      procPath: (() { final guardedValue = map['procPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryContent: (() { final guardedValue = map['registryContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryKey: (() { final guardedValue = map['registryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as int),
    );
  }
}

