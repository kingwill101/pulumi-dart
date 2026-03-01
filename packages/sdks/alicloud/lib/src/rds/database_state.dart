// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// Character set. The value range is limited to the following:
  /// - MySQL: [ utf8, gbk, latin1, utf8mb4 ] \(`utf8mb4` only supports versions 5.5 and 5.6\).
  /// - SQLServer: [ Chinese_PRC_CI_AS, Chinese_PRC_CS_AS, SQL_Latin1_General_CP1_CI_AS, SQL_Latin1_General_CP1_CS_AS, Chinese_PRC_BIN ]
  /// - PostgreSQL: Valid values for PostgreSQL databases: a value in the `character set,<Collate>,<Ctype>` format. Example: `UTF8,C,en_US.utf8`.
  /// > - Valid values for the character set : [ KOI8U, UTF8, WIN866, WIN874, WIN1250, WIN1251, WIN1252, WIN1253, WIN1254, WIN1255, WIN1256, WIN1257, WIN1258, EUC_CN, EUC_KR, EUC_TW, EUC_JP, EUC_JIS_2004, KOI8R, MULE_INTERNAL, LATIN1, LATIN2, LATIN3, LATIN4, LATIN5, LATIN6, LATIN7, LATIN8, LATIN9, LATIN10, ISO_8859_5, ISO_8859_6, ISO_8859_7, ISO_8859_8, SQL_ASCII ]
  /// > - Valid values for the Collate field: You can execute the `SELECT DISTINCT collname FROM pg_collation;` statement to obtain the field value. The default value is `C`.
  /// > - Valid values for the Ctype field: You can execute the `SELECT DISTINCT collctype FROM pg_collation;` statement to obtain the field value. The default value is `en_US.utf8`.
  /// - MariaDB: [ utf8, gbk, latin1, utf8mb4 ]
  ///
  /// More details refer to [API Docs](https://www.alibabacloud.com/help/zh/doc-detail/26258.htm)
  final pulumi.Input<String>? characterSet;
  /// The name of the database.
  /// > **NOTE:**
  /// The name must be 2 to 64 characters in length.
  /// The name must start with a lowercase letter and end with a lowercase letter or digit.
  /// The name can contain lowercase letters, digits, underscores (_), and hyphens (-).
  /// The name must be unique within the instance.
  /// For more information about invalid characters, see [Forbidden keywords table](https://help.aliyun.com/zh/rds/developer-reference/forbidden-keywords?spm=api-workbench.api_explorer.0.0.20e15f16d1z52p).
  final pulumi.Input<String>? dataBaseName;
  /// Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  final pulumi.Input<String>? description;
  /// The instance ID. You can call the DescribeDBInstances operation to query the instance ID.
  final pulumi.Input<String>? instanceId;
  /// The attribute has been deprecated from 1.267.0 and using `data_base_name` instead.
  /// > **NOTE:** The value of "data_base_name" or "character_set"  does not support modification.
  final pulumi.Input<String>? name;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [DatabaseState].
  /// [characterSet] Character set. The value range is limited to the following:
  /// [dataBaseName] The name of the database.
  /// [description] Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  /// [instanceId] The instance ID. You can call the DescribeDBInstances operation to query the instance ID.
  /// [name] The attribute has been deprecated from 1.267.0 and using `data_base_name` instead.
  /// [status] The status of the resource
  DatabaseState({
    pulumi.Output<String>? characterSet,
    pulumi.Output<String>? dataBaseName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? status,
  }) :
      characterSet = pulumi.Input.asOptionalInput<String>(characterSet),
      dataBaseName = pulumi.Input.asOptionalInput<String>(dataBaseName),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSet': ?characterSet,
      'dataBaseName': ?dataBaseName,
      'description': ?description,
      'instanceId': ?instanceId,
      'name': ?name,
      'status': ?status,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      characterSet: map['characterSet'] == null ? null : pulumi.Output.create<String>(map['characterSet'] as String),
      dataBaseName: map['dataBaseName'] == null ? null : pulumi.Output.create<String>(map['dataBaseName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

