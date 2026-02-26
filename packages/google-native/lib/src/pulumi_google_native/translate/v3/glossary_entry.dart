import 'package:pulumi/pulumi.dart';
import 'glossary_entry_args.dart';
import 'glossary_terms_pair_response.dart';
import 'glossary_terms_set_response.dart';

/// Creates a glossary entry.
class GlossaryEntry extends CustomResource {
  /// Describes the glossary entry.
  late final Output<String> description;
  late final Output<String> glossaryId;
  late final Output<String> location;

  /// The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  late final Output<String> name;
  late final Output<String> project;

  /// Used for an unidirectional glossary.
  late final Output<GlossaryTermsPairResponse> termsPair;

  /// Used for an equivalent term sets glossary.
  late final Output<GlossaryTermsSetResponse> termsSet;

  GlossaryEntry(
    String name, {
    GlossaryEntryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:translate/v3:GlossaryEntry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.glossaryId = registerOutput<String>('glossaryId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.termsPair = registerOutput<GlossaryTermsPairResponse>('termsPair');
    this.termsSet = registerOutput<GlossaryTermsSetResponse>('termsSet');
  }
}
