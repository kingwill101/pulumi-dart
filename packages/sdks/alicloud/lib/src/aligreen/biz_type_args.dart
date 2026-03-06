// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aligreen_biz_type_biz_type_args_doc}
/// The set of arguments for BizType.
/// {@endtemplate}
/// {@macro pulumi_aligreen_biz_type_biz_type_args_doc}
class BizTypeArgs {
  /// The name of the existing business scenario that was imported from when the business scenario was created.
  final pulumi.Input<String>? bizTypeImport;
  /// The name of the business scenario defined by the customer. It can contain no more than 32 characters in English, numbers, and underscores.
  final pulumi.Input<String> bizTypeName;
  /// Specifies whether to import the configuration of an industry template. Default value: false. Valid values: true: imports the configuration of an industry template. false: does not import the configuration of an industry template. If the value is true, you must specify the industryInfo parameter.
  final pulumi.Input<bool>? citeTemplate;
  /// The description of the business scenario defined by the customer, which is a combination of Chinese and English, numbers, and underscores, and cannot exceed 32 characters.
  final pulumi.Input<String>? description;
  /// The industry classification. Valid values: Social-Registration information-Profile picture Social-Registration information-Nickname Social-Registration information-Bio Social-Instant messaging-Chat Social-Instant messaging-Group chat Social-Instant messaging-Chat room Social-Forums&Communities-Post Social-Forums&Communities-Comment Social-Forums&Communities-Tag Social-Forums&Communities-Recommendation Multimedia-Registration information-Profile picture Multimedia-Registration information-Nickname Multimedia-Registration information-Bio Multimedia-Instant messaging-Chat Multimedia-Live streaming-Heading Multimedia-Live streaming-Cover Multimedia-Live streaming-Content Multimedia-Live streaming-Comment Multimedia-Online storage-Storage content Multimedia-Online storage-Shared content Gaming-Registration information-Nickname Gaming-Registration information-Profile picture Gaming-Registration information-Signature Gaming-Instant messaging-Chat Gaming-Instant messaging-Group chat Gaming-Instant messaging-Chat room Gaming-Forums&Communities-Post Gaming-Forums&Communities-Comment Gaming-Forums&Communities-Tag Gaming-Forums&Communities-Recommendation New retail-Goods-Heading New retail-Goods-Description Reading-Books-Title Reading-Books-Heading Reading-Books-Cover Reading-Books-Content Media-News content-News content Education-Registration information-Nickname Education-Registration information-Profile picture Education-Registration information-Bio Gaming-Instant messaging-Chat Gaming-Forums&Communities-Post Education-Forums&Communities-Comment Education-Forums&Communities-Tag Education-Forums&Communities-Recommendation Education-Customer service-Voice call Others
  final pulumi.Input<String>? industryInfo;

  /// Creates a new [BizTypeArgs].
  /// [bizTypeImport] The name of the existing business scenario that was imported from when the business scenario was created.
  /// [bizTypeName] The name of the business scenario defined by the customer. It can contain no more than 32 characters in English, numbers, and underscores.
  /// [citeTemplate] Specifies whether to import the configuration of an industry template. Default value: false. Valid values: true: imports the configuration of an industry template. false: does not import the configuration of an industry template. If the value is true, you must specify the industryInfo parameter.
  /// [description] The description of the business scenario defined by the customer, which is a combination of Chinese and English, numbers, and underscores, and cannot exceed 32 characters.
  /// [industryInfo] The industry classification. Valid values: Social-Registration information-Profile picture Social-Registration information-Nickname Social-Registration information-Bio Social-Instant messaging-Chat Social-Instant messaging-Group chat Social-Instant messaging-Chat room Social-Forums&Communities-Post Social-Forums&Communities-Comment Social-Forums&Communities-Tag Social-Forums&Communities-Recommendation Multimedia-Registration information-Profile picture Multimedia-Registration information-Nickname Multimedia-Registration information-Bio Multimedia-Instant messaging-Chat Multimedia-Live streaming-Heading Multimedia-Live streaming-Cover Multimedia-Live streaming-Content Multimedia-Live streaming-Comment Multimedia-Online storage-Storage content Multimedia-Online storage-Shared content Gaming-Registration information-Nickname Gaming-Registration information-Profile picture Gaming-Registration information-Signature Gaming-Instant messaging-Chat Gaming-Instant messaging-Group chat Gaming-Instant messaging-Chat room Gaming-Forums&Communities-Post Gaming-Forums&Communities-Comment Gaming-Forums&Communities-Tag Gaming-Forums&Communities-Recommendation New retail-Goods-Heading New retail-Goods-Description Reading-Books-Title Reading-Books-Heading Reading-Books-Cover Reading-Books-Content Media-News content-News content Education-Registration information-Nickname Education-Registration information-Profile picture Education-Registration information-Bio Gaming-Instant messaging-Chat Gaming-Forums&Communities-Post Education-Forums&Communities-Comment Education-Forums&Communities-Tag Education-Forums&Communities-Recommendation Education-Customer service-Voice call Others
  const BizTypeArgs({
    this.bizTypeImport,
    required this.bizTypeName,
    this.citeTemplate,
    this.description,
    this.industryInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizTypeImport': ?bizTypeImport,
      'bizTypeName': bizTypeName,
      'citeTemplate': ?citeTemplate,
      'description': ?description,
      'industryInfo': ?industryInfo,
    };
  }

  factory BizTypeArgs.fromMap(Map<String, dynamic> map) {
    return BizTypeArgs(
      bizTypeImport: (() { final guardedValue = map['bizTypeImport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bizTypeName: pulumi.Input.fromValue(map['bizTypeName'] as String),
      citeTemplate: (() { final guardedValue = map['citeTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      industryInfo: (() { final guardedValue = map['industryInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

