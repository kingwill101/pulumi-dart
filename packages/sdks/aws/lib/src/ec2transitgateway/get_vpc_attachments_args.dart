// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_attachments_filter.dart';

/// {@template pulumi_ec2transitgateway_get_vpc_attachments_get_vpc_attachments_args_doc}
/// Arguments for getVpcAttachments.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_vpc_attachments_get_vpc_attachments_args_doc}
class GetVpcAttachmentsArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetVpcAttachmentsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVpcAttachmentsArgs].
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetVpcAttachmentsArgs({this.filters, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetVpcAttachmentsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetVpcAttachmentsFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
    };
  }

  factory GetVpcAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentsArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetVpcAttachmentsFilter>(
            guardedValue,
            (value) => GetVpcAttachmentsFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
