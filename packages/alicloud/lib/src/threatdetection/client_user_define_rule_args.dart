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
  ClientUserDefineRuleArgs({
    required int actionType,
    required String clientUserDefineRuleName,
    String? cmdline,
    String? filePath,
    String? hash,
    String? ip,
    String? newFilePath,
    String? parentCmdline,
    String? parentProcPath,
    required String platform,
    String? portStr,
    String? procPath,
    String? registryContent,
    String? registryKey,
    required int type,
  }) :
      actionType = pulumi.Input.asInput<int>(actionType),
      clientUserDefineRuleName = pulumi.Input.asInput<String>(clientUserDefineRuleName),
      cmdline = pulumi.Input.asOptionalInput<String>(cmdline),
      filePath = pulumi.Input.asOptionalInput<String>(filePath),
      hash = pulumi.Input.asOptionalInput<String>(hash),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      newFilePath = pulumi.Input.asOptionalInput<String>(newFilePath),
      parentCmdline = pulumi.Input.asOptionalInput<String>(parentCmdline),
      parentProcPath = pulumi.Input.asOptionalInput<String>(parentProcPath),
      platform = pulumi.Input.asInput<String>(platform),
      portStr = pulumi.Input.asOptionalInput<String>(portStr),
      procPath = pulumi.Input.asOptionalInput<String>(procPath),
      registryContent = pulumi.Input.asOptionalInput<String>(registryContent),
      registryKey = pulumi.Input.asOptionalInput<String>(registryKey),
      type = pulumi.Input.asInput<int>(type);

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
      actionType: map['actionType'] as int,
      clientUserDefineRuleName: map['clientUserDefineRuleName'] as String,
      cmdline: map['cmdline'] == null ? null : map['cmdline'] as String,
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      hash: map['hash'] == null ? null : map['hash'] as String,
      ip: map['ip'] == null ? null : map['ip'] as String,
      newFilePath: map['newFilePath'] == null ? null : map['newFilePath'] as String,
      parentCmdline: map['parentCmdline'] == null ? null : map['parentCmdline'] as String,
      parentProcPath: map['parentProcPath'] == null ? null : map['parentProcPath'] as String,
      platform: map['platform'] as String,
      portStr: map['portStr'] == null ? null : map['portStr'] as String,
      procPath: map['procPath'] == null ? null : map['procPath'] as String,
      registryContent: map['registryContent'] == null ? null : map['registryContent'] as String,
      registryKey: map['registryKey'] == null ? null : map['registryKey'] as String,
      type: map['type'] as int,
    );
  }
}

