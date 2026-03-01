import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_book_args.dart';
import 'address_book_ecs_tag.dart';
import 'address_book_state.dart';

/// Provides a Cloud Firewall Address Book resource.
///
/// For information about Cloud Firewall Address Book and how to use it, see [What is Address Book](https://www.alibabacloud.com/help/en/cloud-firewall/developer-reference/api-cloudfw-2017-12-07-addaddressbook).
///
/// > **NOTE:** Available since v1.178.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.cloudfirewall.AddressBook("example", {
///     description: "example_value",
///     groupName: "example_value",
///     groupType: "tag",
///     tagRelation: "and",
///     autoAddTagEcs: 0,
///     ecsTags: [{
///         tagKey: "created",
///         tagValue: "tfTestAcc0",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cloudfirewall.AddressBook("example",
///     description="example_value",
///     group_name="example_value",
///     group_type="tag",
///     tag_relation="and",
///     auto_add_tag_ecs=0,
///     ecs_tags=[{
///         "tag_key": "created",
///         "tag_value": "tfTestAcc0",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.CloudFirewall.AddressBook("example", new()
///     {
///         Description = "example_value",
///         GroupName = "example_value",
///         GroupType = "tag",
///         TagRelation = "and",
///         AutoAddTagEcs = 0,
///         EcsTags = new[]
///         {
///             new AliCloud.CloudFirewall.Inputs.AddressBookEcsTagArgs
///             {
///                 TagKey = "created",
///                 TagValue = "tfTestAcc0",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfirewall.NewAddressBook(ctx, "example", &cloudfirewall.AddressBookArgs{
/// 			Description:   pulumi.String("example_value"),
/// 			GroupName:     pulumi.String("example_value"),
/// 			GroupType:     pulumi.String("tag"),
/// 			TagRelation:   pulumi.String("and"),
/// 			AutoAddTagEcs: pulumi.Int(0),
/// 			EcsTags: cloudfirewall.AddressBookEcsTagArray{
/// 				&cloudfirewall.AddressBookEcsTagArgs{
/// 					TagKey:   pulumi.String("created"),
/// 					TagValue: pulumi.String("tfTestAcc0"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudfirewall.AddressBook;
/// import com.pulumi.alicloud.cloudfirewall.AddressBookArgs;
/// import com.pulumi.alicloud.cloudfirewall.inputs.AddressBookEcsTagArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AddressBook("example", AddressBookArgs.builder()
///             .description("example_value")
///             .groupName("example_value")
///             .groupType("tag")
///             .tagRelation("and")
///             .autoAddTagEcs(0)
///             .ecsTags(AddressBookEcsTagArgs.builder()
///                 .tagKey("created")
///                 .tagValue("tfTestAcc0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cloudfirewall:AddressBook
///     properties:
///       description: example_value
///       groupName: example_value
///       groupType: tag
///       tagRelation: and
///       autoAddTagEcs: 0
///       ecsTags:
///         - tagKey: created
///           tagValue: tfTestAcc0
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Address Book can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/addressBook:AddressBook example <id>
/// ```
class AddressBook extends pulumi.CustomResource {
  /// The list of addresses.
  late final pulumi.Output<List<String>?> addressLists;
  /// Whether you want to automatically add new matching tags of the ECS IP address to the Address Book. Valid values: `0`, `1`.
  late final pulumi.Output<int?> autoAddTagEcs;
  /// The description of the Address Book.
  late final pulumi.Output<String> description;
  /// A list of ECS tags. See `ecs_tags` below.
  late final pulumi.Output<List<AddressBookEcsTag>?> ecsTags;
  /// The name of the Address Book.
  late final pulumi.Output<String> groupName;
  /// The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// **NOTE:** From version 1.213.1, `group_type` can be set to `ipv6`, `domain`, `port`.
  late final pulumi.Output<String> groupType;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  late final pulumi.Output<String?> lang;
  /// The logical relation among the ECS tags that to be matched. Default value: `and`. Valid values:
  late final pulumi.Output<String> tagRelation;

  /// Creates a new [AddressBook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AddressBook]. {@macro pulumi_cloudfirewall_address_book_address_book_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AddressBook(
    String name, {
    AddressBookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/addressBook:AddressBook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressLists = registerOutput<List<String>?>('addressLists');
    this.autoAddTagEcs = registerOutput<int?>('autoAddTagEcs');
    this.description = registerOutput<String>('description');
    this.ecsTags = registerOutput<List<AddressBookEcsTag>?>('ecsTags');
    this.groupName = registerOutput<String>('groupName');
    this.groupType = registerOutput<String>('groupType');
    this.lang = registerOutput<String?>('lang');
    this.tagRelation = registerOutput<String>('tagRelation');
  }

  /// Gets an existing [AddressBook] resource's state with the given [name] and [id].
  static AddressBook get(
    String name,
    pulumi.Input<String> id, {
    AddressBookState? state,
  }) {
    return AddressBook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AddressBook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/addressBook:AddressBook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressLists = registerOutput<List<String>?>('addressLists');
    this.autoAddTagEcs = registerOutput<int?>('autoAddTagEcs');
    this.description = registerOutput<String>('description');
    this.ecsTags = registerOutput<List<AddressBookEcsTag>?>('ecsTags');
    this.groupName = registerOutput<String>('groupName');
    this.groupType = registerOutput<String>('groupType');
    this.lang = registerOutput<String?>('lang');
    this.tagRelation = registerOutput<String>('tagRelation');
  }
}
