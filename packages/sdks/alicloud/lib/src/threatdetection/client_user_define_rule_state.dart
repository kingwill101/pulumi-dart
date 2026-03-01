// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClientUserDefineRule resources.
class ClientUserDefineRuleState {
  /// The operation type. Value:
  /// - **0**: plus White
  /// - **1**: Plus Black.
  final pulumi.Input<int>? actionType;
  /// The custom rule name.
  final pulumi.Input<String>? clientUserDefineRuleName;
  /// Command line. When the value of the Type attribute is 2, 3, 4, 5, 6, or 7, the command line field is required.
  final pulumi.Input<String>? cmdline;
  /// The creation time of the resource.
  final pulumi.Input<int>? createTime;
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
  final pulumi.Input<String>? platform;
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
  final pulumi.Input<int>? type;

  /// Creates a new [ClientUserDefineRuleState].
  /// [actionType] The operation type. Value:
  /// [clientUserDefineRuleName] The custom rule name.
  /// [cmdline] Command line. When the value of the Type attribute is 2, 3, 4, 5, 6, or 7, the command line field is required.
  /// [createTime] The creation time of the resource.
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
  ClientUserDefineRuleState({
    pulumi.Output<int>? actionType,
    pulumi.Output<String>? clientUserDefineRuleName,
    pulumi.Output<String>? cmdline,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? filePath,
    pulumi.Output<String>? hash,
    pulumi.Output<String>? ip,
    pulumi.Output<String>? newFilePath,
    pulumi.Output<String>? parentCmdline,
    pulumi.Output<String>? parentProcPath,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? portStr,
    pulumi.Output<String>? procPath,
    pulumi.Output<String>? registryContent,
    pulumi.Output<String>? registryKey,
    pulumi.Output<int>? type,
  }) :
      actionType = pulumi.Input.asOptionalInput<int>(actionType),
      clientUserDefineRuleName = pulumi.Input.asOptionalInput<String>(clientUserDefineRuleName),
      cmdline = pulumi.Input.asOptionalInput<String>(cmdline),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      filePath = pulumi.Input.asOptionalInput<String>(filePath),
      hash = pulumi.Input.asOptionalInput<String>(hash),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      newFilePath = pulumi.Input.asOptionalInput<String>(newFilePath),
      parentCmdline = pulumi.Input.asOptionalInput<String>(parentCmdline),
      parentProcPath = pulumi.Input.asOptionalInput<String>(parentProcPath),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      portStr = pulumi.Input.asOptionalInput<String>(portStr),
      procPath = pulumi.Input.asOptionalInput<String>(procPath),
      registryContent = pulumi.Input.asOptionalInput<String>(registryContent),
      registryKey = pulumi.Input.asOptionalInput<String>(registryKey),
      type = pulumi.Input.asOptionalInput<int>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'clientUserDefineRuleName': ?clientUserDefineRuleName,
      'cmdline': ?cmdline,
      'createTime': ?createTime,
      'filePath': ?filePath,
      'hash': ?hash,
      'ip': ?ip,
      'newFilePath': ?newFilePath,
      'parentCmdline': ?parentCmdline,
      'parentProcPath': ?parentProcPath,
      'platform': ?platform,
      'portStr': ?portStr,
      'procPath': ?procPath,
      'registryContent': ?registryContent,
      'registryKey': ?registryKey,
      'type': ?type,
    };
  }

  factory ClientUserDefineRuleState.fromMap(Map<String, dynamic> map) {
    return ClientUserDefineRuleState(
      actionType: map['actionType'] == null ? null : pulumi.Output.create<int>(map['actionType'] as int),
      clientUserDefineRuleName: map['clientUserDefineRuleName'] == null ? null : pulumi.Output.create<String>(map['clientUserDefineRuleName'] as String),
      cmdline: map['cmdline'] == null ? null : pulumi.Output.create<String>(map['cmdline'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      filePath: map['filePath'] == null ? null : pulumi.Output.create<String>(map['filePath'] as String),
      hash: map['hash'] == null ? null : pulumi.Output.create<String>(map['hash'] as String),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      newFilePath: map['newFilePath'] == null ? null : pulumi.Output.create<String>(map['newFilePath'] as String),
      parentCmdline: map['parentCmdline'] == null ? null : pulumi.Output.create<String>(map['parentCmdline'] as String),
      parentProcPath: map['parentProcPath'] == null ? null : pulumi.Output.create<String>(map['parentProcPath'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      portStr: map['portStr'] == null ? null : pulumi.Output.create<String>(map['portStr'] as String),
      procPath: map['procPath'] == null ? null : pulumi.Output.create<String>(map['procPath'] as String),
      registryContent: map['registryContent'] == null ? null : pulumi.Output.create<String>(map['registryContent'] as String),
      registryKey: map['registryKey'] == null ? null : pulumi.Output.create<String>(map['registryKey'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<int>(map['type'] as int),
    );
  }
}

