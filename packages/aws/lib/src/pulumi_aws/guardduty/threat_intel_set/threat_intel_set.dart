import 'package:pulumi/pulumi.dart';
import 'threat_intel_set_args.dart';

/// Provides a resource to manage a GuardDuty ThreatIntelSet.
///
/// > **Note:** Currently in GuardDuty, users from member accounts cannot upload and further manage ThreatIntelSets. ThreatIntelSets that are uploaded by the primary account are imposed on GuardDuty functionality in its member accounts. See the [GuardDuty API Documentation](https://docs.aws.amazon.com/guardduty/latest/ug/create-threat-intel-set.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty ThreatIntelSet using the primary GuardDuty detector ID and ThreatIntelSetID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/threatIntelSet:ThreatIntelSet MyThreatIntelSet 00b00fd5aecc0ab60a708659477e9617:123456789012
/// ```
class ThreatIntelSet extends CustomResource {
  /// Specifies whether GuardDuty is to start using the uploaded ThreatIntelSet.
  late final Output<bool> activate;

  /// Amazon Resource Name (ARN) of the GuardDuty ThreatIntelSet.
  late final Output<String> arn;

  /// The detector ID of the GuardDuty.
  late final Output<String> detectorId;

  /// The format of the file that contains the ThreatIntelSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  late final Output<String> format;

  /// The URI of the file that contains the ThreatIntelSet.
  late final Output<String> location;

  /// The friendly name to identify the ThreatIntelSet.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ThreatIntelSet(
    String name, {
    ThreatIntelSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/threatIntelSet:ThreatIntelSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activate = registerOutput<bool>('activate');
    this.arn = registerOutput<String>('arn');
    this.detectorId = registerOutput<String>('detectorId');
    this.format = registerOutput<String>('format');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
