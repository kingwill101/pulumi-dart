// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_email_template_header.dart';

class EmailTemplateEmailTemplate {
  /// JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.
  final pulumi.Input<String>? defaultSubstitutions;
  final pulumi.Input<String>? description;
  final pulumi.Input<List<EmailTemplateEmailTemplateHeader>>? headers;
  /// The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.
  final pulumi.Input<String>? htmlPart;
  /// The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.
  final pulumi.Input<String>? recommenderId;
  /// Subject line, or title, to use in email messages that are based on the message template.
  final pulumi.Input<String>? subject;
  /// Message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.
  final pulumi.Input<String>? textPart;

  /// Creates a new [EmailTemplateEmailTemplate].
  /// [defaultSubstitutions] JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.
  /// [description] Optional.
  /// [headers] Optional.
  /// [htmlPart] The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.
  /// [recommenderId] The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.
  /// [subject] Subject line, or title, to use in email messages that are based on the message template.
  /// [textPart] Message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.
  const EmailTemplateEmailTemplate({
    this.defaultSubstitutions,
    this.description,
    this.headers,
    this.htmlPart,
    this.recommenderId,
    this.subject,
    this.textPart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSubstitutions': ?defaultSubstitutions,
      'description': ?description,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<EmailTemplateEmailTemplateHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<EmailTemplateEmailTemplateHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'htmlPart': ?htmlPart,
      'recommenderId': ?recommenderId,
      'subject': ?subject,
      'textPart': ?textPart,
    };
  }

  factory EmailTemplateEmailTemplate.fromMap(Map<String, dynamic> map) {
    return EmailTemplateEmailTemplate(
      defaultSubstitutions: (() { final guardedValue = map['defaultSubstitutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailTemplateEmailTemplateHeader>(guardedValue, (value) => EmailTemplateEmailTemplateHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      htmlPart: (() { final guardedValue = map['htmlPart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recommenderId: (() { final guardedValue = map['recommenderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textPart: (() { final guardedValue = map['textPart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

