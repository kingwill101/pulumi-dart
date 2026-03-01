// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_block_response.dart';
import 'google_cloud_documentai_v1_document_page_detected_barcode_response.dart';
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_dimension_response.dart';
import 'google_cloud_documentai_v1_document_page_form_field_response.dart';
import 'google_cloud_documentai_v1_document_page_image_quality_scores_response.dart';
import 'google_cloud_documentai_v1_document_page_image_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_page_line_response.dart';
import 'google_cloud_documentai_v1_document_page_matrix_response.dart';
import 'google_cloud_documentai_v1_document_page_paragraph_response.dart';
import 'google_cloud_documentai_v1_document_page_symbol_response.dart';
import 'google_cloud_documentai_v1_document_page_table_response.dart';
import 'google_cloud_documentai_v1_document_page_token_response.dart';
import 'google_cloud_documentai_v1_document_page_visual_element_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A page in a Document.
class GoogleCloudDocumentaiV1DocumentPageResponse {
  /// A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
  final List<GoogleCloudDocumentaiV1DocumentPageBlockResponse> blocks;

  /// A list of detected barcodes.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse>
  detectedBarcodes;

  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>
  detectedLanguages;

  /// Physical dimension of the page.
  final GoogleCloudDocumentaiV1DocumentPageDimensionResponse dimension;

  /// A list of visually detected form fields on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageFormFieldResponse> formFields;

  /// Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.
  final GoogleCloudDocumentaiV1DocumentPageImageResponse image;

  /// Image quality scores.
  final GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse
  imageQualityScores;

  /// Layout for the page.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse layout;

  /// A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.
  final List<GoogleCloudDocumentaiV1DocumentPageLineResponse> lines;

  /// 1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.
  final int pageNumber;

  /// A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.
  final List<GoogleCloudDocumentaiV1DocumentPageParagraphResponse> paragraphs;

  /// The history of this page.
  final GoogleCloudDocumentaiV1DocumentProvenanceResponse provenance;

  /// A list of visually detected symbols on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageSymbolResponse> symbols;

  /// A list of visually detected tables on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageTableResponse> tables;

  /// A list of visually detected tokens on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageTokenResponse> tokens;

  /// Transformation matrices that were applied to the original document image to produce Page.image.
  final List<GoogleCloudDocumentaiV1DocumentPageMatrixResponse> transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageVisualElementResponse>
  visualElements;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageResponse].
  /// [blocks] A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
  /// [detectedBarcodes] A list of detected barcodes.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [dimension] Physical dimension of the page.
  /// [formFields] A list of visually detected form fields on the page.
  /// [image] Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.
  /// [imageQualityScores] Image quality scores.
  /// [layout] Layout for the page.
  /// [lines] A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.
  /// [pageNumber] 1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.
  /// [paragraphs] A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.
  /// [provenance] The history of this page.
  /// [symbols] A list of visually detected symbols on the page.
  /// [tables] A list of visually detected tables on the page.
  /// [tokens] A list of visually detected tokens on the page.
  /// [transforms] Transformation matrices that were applied to the original document image to produce Page.image.
  /// [visualElements] A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.
  GoogleCloudDocumentaiV1DocumentPageResponse({
    required this.blocks,
    required this.detectedBarcodes,
    required this.detectedLanguages,
    required this.dimension,
    required this.formFields,
    required this.image,
    required this.imageQualityScores,
    required this.layout,
    required this.lines,
    required this.pageNumber,
    required this.paragraphs,
    required this.provenance,
    required this.symbols,
    required this.tables,
    required this.tokens,
    required this.transforms,
    required this.visualElements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocks':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageBlockResponse,
            Map<String, dynamic>
          >(blocks, (value) => value.toMap()),
      'detectedBarcodes':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse,
            Map<String, dynamic>
          >(detectedBarcodes, (value) => value.toMap()),
      'detectedLanguages':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse,
            Map<String, dynamic>
          >(detectedLanguages, (value) => value.toMap()),
      'dimension': dimension.toMap(),
      'formFields':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageFormFieldResponse,
            Map<String, dynamic>
          >(formFields, (value) => value.toMap()),
      'image': image.toMap(),
      'imageQualityScores': imageQualityScores.toMap(),
      'layout': layout.toMap(),
      'lines':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageLineResponse,
            Map<String, dynamic>
          >(lines, (value) => value.toMap()),
      'pageNumber': pageNumber,
      'paragraphs':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageParagraphResponse,
            Map<String, dynamic>
          >(paragraphs, (value) => value.toMap()),
      'provenance': provenance.toMap(),
      'symbols':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageSymbolResponse,
            Map<String, dynamic>
          >(symbols, (value) => value.toMap()),
      'tables':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageTableResponse,
            Map<String, dynamic>
          >(tables, (value) => value.toMap()),
      'tokens':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageTokenResponse,
            Map<String, dynamic>
          >(tokens, (value) => value.toMap()),
      'transforms':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageMatrixResponse,
            Map<String, dynamic>
          >(transforms, (value) => value.toMap()),
      'visualElements':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageVisualElementResponse,
            Map<String, dynamic>
          >(visualElements, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageResponse(
      blocks:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageBlockResponse
          >(
            map['blocks'],
            (value) => GoogleCloudDocumentaiV1DocumentPageBlockResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      detectedBarcodes:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse
          >(
            map['detectedBarcodes'],
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      detectedLanguages:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse
          >(
            map['detectedLanguages'],
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      dimension: GoogleCloudDocumentaiV1DocumentPageDimensionResponse.fromMap(
        (map['dimension'] as Map).cast<String, dynamic>(),
      ),
      formFields:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageFormFieldResponse
          >(
            map['formFields'],
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageFormFieldResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      image: GoogleCloudDocumentaiV1DocumentPageImageResponse.fromMap(
        (map['image'] as Map).cast<String, dynamic>(),
      ),
      imageQualityScores:
          GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse.fromMap(
            (map['imageQualityScores'] as Map).cast<String, dynamic>(),
          ),
      layout: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
        (map['layout'] as Map).cast<String, dynamic>(),
      ),
      lines:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageLineResponse
          >(
            map['lines'],
            (value) => GoogleCloudDocumentaiV1DocumentPageLineResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      pageNumber: map['pageNumber'] as int,
      paragraphs:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageParagraphResponse
          >(
            map['paragraphs'],
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageParagraphResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      provenance: GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(
        (map['provenance'] as Map).cast<String, dynamic>(),
      ),
      symbols:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageSymbolResponse
          >(
            map['symbols'],
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageSymbolResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      tables:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageTableResponse
          >(
            map['tables'],
            (value) => GoogleCloudDocumentaiV1DocumentPageTableResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      tokens:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageTokenResponse
          >(
            map['tokens'],
            (value) => GoogleCloudDocumentaiV1DocumentPageTokenResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      transforms:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageMatrixResponse
          >(
            map['transforms'],
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageMatrixResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      visualElements:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageVisualElementResponse
          >(
            map['visualElements'],
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageVisualElementResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
