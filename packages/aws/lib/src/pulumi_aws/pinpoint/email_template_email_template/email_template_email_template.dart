// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../email_template_email_template_header/email_template_email_template_header.dart';

class EmailTemplateEmailTemplate {
  /// JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.
  final String? defaultSubstitutions;
  final String? description;
  final List<EmailTemplateEmailTemplateHeader>? headers;

  /// The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.
  final String? htmlPart;

  /// The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.
  final String? recommenderId;

  /// Subject line, or title, to use in email messages that are based on the message template.
  final String? subject;

  /// Message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.
  final String? textPart;

  EmailTemplateEmailTemplate({
    this.defaultSubstitutions,
    this.description,
    this.headers,
    this.htmlPart,
    this.recommenderId,
    this.subject,
    this.textPart,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultSubstitutionsValue = defaultSubstitutions;
    if (defaultSubstitutionsValue != null) {
      map['defaultSubstitutions'] = defaultSubstitutionsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<EmailTemplateEmailTemplateHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final htmlPartValue = htmlPart;
    if (htmlPartValue != null) {
      map['htmlPart'] = htmlPartValue;
    }
    final recommenderIdValue = recommenderId;
    if (recommenderIdValue != null) {
      map['recommenderId'] = recommenderIdValue;
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = subjectValue;
    }
    final textPartValue = textPart;
    if (textPartValue != null) {
      map['textPart'] = textPartValue;
    }
    return map;
  }

  factory EmailTemplateEmailTemplate.fromMap(Map<String, dynamic> map) {
    return EmailTemplateEmailTemplate(
      defaultSubstitutions: map['defaultSubstitutions'] == null
          ? null
          : map['defaultSubstitutions'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null
          ? null
          : Input.decodeList<EmailTemplateEmailTemplateHeader>(
              map['headers'],
              (value) => EmailTemplateEmailTemplateHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      htmlPart: map['htmlPart'] == null ? null : map['htmlPart'] as String,
      recommenderId:
          map['recommenderId'] == null ? null : map['recommenderId'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      textPart: map['textPart'] == null ? null : map['textPart'] as String,
    );
  }
}
