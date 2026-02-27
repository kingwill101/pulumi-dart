import 'package:pulumi/pulumi.dart';
import '../input_destination/input_destination.dart';
import '../input_input_device/input_input_device.dart';
import '../input_media_connect_flow/input_media_connect_flow.dart';
import '../input_source/input_source.dart';
import '../input_vpc/input_vpc.dart';
import 'input_args_type.dart';

/// Resource for managing an AWS MediaLive Input.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaLive Input using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/input:Input example 12345678
/// ```
class InputType extends CustomResource {
  /// ARN of the Input.
  late final Output<String> arn;

  /// Channels attached to Input.
  late final Output<List<String>> attachedChannels;

  /// Destination settings for PUSH type inputs. See Destinations for more details.
  late final Output<List<InputDestination>?> destinations;

  /// The input class.
  late final Output<String> inputClass;

  /// Settings for the devices. See Input Devices for more details.
  late final Output<List<InputInputDevice>> inputDevices;

  /// A list of IDs for all Inputs which are partners of this one.
  late final Output<List<String>> inputPartnerIds;

  /// List of input security groups.
  late final Output<List<String>?> inputSecurityGroups;

  /// Source type of the input.
  late final Output<String> inputSourceType;

  /// A list of the MediaConnect Flows. See Media Connect Flows for more details.
  late final Output<List<InputMediaConnectFlow>> mediaConnectFlows;

  /// Name of the input.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the role this input assumes during and after creation.
  late final Output<String> roleArn;

  /// The source URLs for a PULL-type input. See Sources for more details.
  late final Output<List<InputSource>> sources;

  /// A map of tags to assign to the Input. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The different types of inputs that AWS Elemental MediaLive supports.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  /// Settings for a private VPC Input. See VPC for more details.
  late final Output<InputVpc?> vpc;

  InputType(
    String name, {
    InputArgsType? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:medialive/input:Input',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachedChannels = registerOutput<List<String>>('attachedChannels');
    this.destinations = registerOutput<List<InputDestination>?>('destinations');
    this.inputClass = registerOutput<String>('inputClass');
    this.inputDevices = registerOutput<List<InputInputDevice>>('inputDevices');
    this.inputPartnerIds = registerOutput<List<String>>('inputPartnerIds');
    this.inputSecurityGroups =
        registerOutput<List<String>?>('inputSecurityGroups');
    this.inputSourceType = registerOutput<String>('inputSourceType');
    this.mediaConnectFlows =
        registerOutput<List<InputMediaConnectFlow>>('mediaConnectFlows');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.sources = registerOutput<List<InputSource>>('sources');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.vpc = registerOutput<InputVpc?>('vpc');
  }
}
